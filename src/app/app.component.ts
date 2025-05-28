import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

import 'ckeditor5/ckeditor5.css';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  standalone: true,
  imports: [RouterOutlet],
})
export class AppComponent {}
