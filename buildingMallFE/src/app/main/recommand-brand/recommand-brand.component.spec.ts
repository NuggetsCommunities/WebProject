import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RecommandBrandComponent } from './recommand-brand.component';

describe('RecommandBrandComponent', () => {
  let component: RecommandBrandComponent;
  let fixture: ComponentFixture<RecommandBrandComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RecommandBrandComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RecommandBrandComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
