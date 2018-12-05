import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { FirebaseServiceProvider } from '../../providers/firebase-service/firebase-service';

/**
 * Generated class for the DespesaPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-despesa',
  templateUrl: 'despesa.html',
})
export class DespesaPage {
  // erro tava aqui
  despesa = {
    nome : '',
    valor : '',
    data :''
  };

  public contas;

  constructor(
    public navCtrl: NavController, 
    public navParams: NavParams,
    public dbService: FirebaseServiceProvider
    ) {
      this.contas = this.dbService.listarDados();
      
  }
  // Salva as despesas
  salvar(tarefa){
    this.dbService.salvar(tarefa);
  }
  
  ionViewDidLoad() {
     console.log('ionViewDidLoad DespesaPage');
  }
}
