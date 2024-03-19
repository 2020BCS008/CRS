import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/Services/login.service';

@Component({
  selector: 'app-admin-dashboard',
  templateUrl: './admin-dashboard.component.html',
  styleUrls: ['./admin-dashboard.component.css']
})
export class AdminDashboardComponent {
  name!: string;
  username!: string;
  constructor(public loginService: LoginService, private router: Router) { 
    
    this.name = this.loginService.getUserDetails().firstName + ' ' + this.loginService.getUserDetails().lastName;
    this.username = this.loginService.getUserDetails().username;
  }
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
