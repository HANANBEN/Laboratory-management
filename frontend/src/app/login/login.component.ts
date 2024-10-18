import { Component } from '@angular/core';
import { HttpClientModule, HttpClient } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-login',
  standalone: true,
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css'],
  imports: [FormsModule, HttpClientModule], // Ajoutez FormsModule ici
})
export class LoginComponent {
  email: string = '';
  password: string = '';

  constructor(private http: HttpClient) {}

  onSubmit() {
    console.log('Form submitted:', this.email, this.password);
    this.http.post('http://localhost:8080/login', {
      email: this.email,
      password: this.password,
    }).subscribe(
      (response) => console.log('Login successful', response),
      (error) => console.error('Login failed', error)
    );
  }
}
