import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import {RouterModule} from '@angular/router';
import { AppComponent } from './app.component';
import { LogonComponent } from './user/logon/logon.component';
import { MainPanelComponent } from './main/main-panel/main-panel.component';
import { NavBarComponent } from './main/nav-bar/nav-bar.component';
import { FooterComponent } from './main/footer/footer.component';
import { SearchComponent } from './main/search/search.component';
import { ProductCategoryComponent } from './main/product-category/product-category.component';
import { CarouselComponent } from './main/carousel/carousel.component';
import { RecommandBrandComponent } from './main/recommand-brand/recommand-brand.component';
import { IndexComponent } from './user/index/index.component';
import { RegisterComponent } from './user/register/register.component';

@NgModule({
  declarations: [
    AppComponent,
    LogonComponent,
    MainPanelComponent,
    NavBarComponent,
    FooterComponent,
    SearchComponent,
    ProductCategoryComponent,
    CarouselComponent,
    RecommandBrandComponent,
    IndexComponent,
    RegisterComponent
  ],
  imports: [
    BrowserModule,
    RouterModule.forRoot([
      {
        path:'',
        redirectTo:'/home',
        pathMatch:"full"
      },
      { 
        path:"home",
        component:MainPanelComponent
      },
      {
        path:"logon",
        component:IndexComponent
      }
     
     
    ])
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
