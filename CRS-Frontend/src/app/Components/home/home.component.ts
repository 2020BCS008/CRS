import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/Services/login.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent {
  constructor(public loginService: LoginService, private router: Router) { }

dashboard() {
  const role = this.loginService.getUserRole();
  switch(role) {
    case 'ADMIN':
      this.router.navigate(['/admin-dashboard']);
      break;
    case 'CUSTOMER':
      this.router.navigate(['/customer-dashboard']);
      break;
    case 'MANAGER':
      this.router.navigate(['/manager-dashboard']);
      break;
    case 'ENGINEER':
      this.router.navigate(['/engineer-dashboard']);
      break;
    default:
      // Handle default case
      break;
  }
}
}