import { Injectable } from '@angular/core';
import { AngularFireDatabase } from 'angularfire2/database';


/*
  Generated class for the FirebaseServiceProvider provider.

  See https://angular.io/guide/dependency-injection for more info on providers
  and Angular DI.
*/
@Injectable()
export class FirebaseServiceProvider {

  constructor(
    public db:AngularFireDatabase) {
      console.log('Hello FirebaseServiceProvider Provider');
  } 

  listarDados(){
    return this.db.list('despesas').snapshotChanges().map( data => {
      return data.map(d => ({key: d.key, ...d.payload.val()}));
    });
  }

  salvar(despesa : any){
    this.db.list('despesas').push(despesa).then(r => console.log(r));
  }

}
