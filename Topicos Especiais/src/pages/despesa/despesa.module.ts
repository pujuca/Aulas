import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { DespesaPage } from './despesa';

@NgModule({
  declarations: [
    DespesaPage,
  ],
  imports: [
    IonicPageModule.forChild(DespesaPage),
  ],
})
export class DespesaPageModule {}
