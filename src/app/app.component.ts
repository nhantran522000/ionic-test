import { Component } from '@angular/core';
import { CKEditorModule } from '@ckeditor/ckeditor5-angular';
import {
  ClassicEditor,
  Bold,
  Essentials,
  Heading,
  Indent,
  IndentBlock,
  Italic,
  Link,
  List,
  MediaEmbed,
  Paragraph,
  Table,
  Undo,
} from 'ckeditor5';

import 'ckeditor5/ckeditor5.css';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  imports: [CKEditorModule],
  standalone: true,
})
export class AppComponent {
  title = 'angular';
  public Editor = ClassicEditor;
  public config = {
    toolbar: [
      'undo',
      'redo',
      '|',
      'heading',
      '|',
      'bold',
      'italic',
      '|',
      'link',
      'insertTable',
      'mediaEmbed',
      '|',
      'bulletedList',
      'numberedList',
      'indent',
      'outdent',
    ],
    plugins: [
      Bold,
      Essentials,
      Heading,
      Indent,
      IndentBlock,
      Italic,
      Link,
      List,
      MediaEmbed,
      Paragraph,
      Table,
      Undo,
    ],
  };
}
