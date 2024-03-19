import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { LoginService } from 'src/app/Services/login.service';
import { SignupService } from 'src/app/Services/signup.service';
import { User } from 'src/app/user';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.component.html',
  styleUrls: ['./signup.component.css']
})
export class SignupComponent {
  name!: string;
  username!: string;
  constructor(public loginService: LoginService,private signUpService: SignupService, private router: Router) {
    this.name = this.loginService.getUserDetails().firstName + ' ' + this.loginService.getUserDetails().lastName;
    this.username = this.loginService.getUserDetails().username;

  }

  user: User = new User();
  message!: string;
  isValid: boolean = false;

  onSubmit() {
    this.signUpService.userSignup(this.user).subscribe({
      next: (user) => {
        this.message = 'User registered successfully!'
        this.isValid = true;
      }, error: (error) => {
        console.log(error);
        this.isValid = false;
        this.message = 'User details are invalid or already exists!'
      }
    })
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
