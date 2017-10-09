.class public Lcom/sec/android/app/SecSetupWizard/KorV3Activity;
.super Landroid/app/Activity;
.source "KorV3Activity.java"


# instance fields
.field final SAMSUNG:I

.field installKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->SAMSUNG:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->installKey:I

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 42
    const v1, 0x7f0d0016

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .local v0, "nextBtnArea":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity$1;-><init>(Lcom/sec/android/app/SecSetupWizard/KorV3Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 103
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x7c000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 104
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 118
    const-string v0, "Setup_V3 Mobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "Setup_V3 Mobile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 122
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 123
    invoke-virtual {p0, v3}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->setResult(I)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->finish()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 31
    :cond_0
    new-instance v0, Lcom/sec/android/app/SecSetupWizard/BasicForm;

    invoke-direct {v0, p0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "bf":Lcom/sec/android/app/SecSetupWizard/BasicForm;
    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->changeScreen(I)V

    .line 33
    invoke-virtual {v0}, Lcom/sec/android/app/SecSetupWizard/BasicForm;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->initView()V

    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/SecSetupWizard/KorV3Activity;->setIndicatorTransparency()V

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method
