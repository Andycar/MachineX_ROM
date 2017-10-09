.class public Lcom/sec/android/app/SecSetupWizard/SequenceItem;
.super Ljava/lang/Object;
.source "SequenceItem.java"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mNext:Ljava/lang/String;

.field private mRquestCode:I

.field private mSkip:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "next"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mIntent:Landroid/content/Intent;

    .line 19
    iput-object p3, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mNext:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mRquestCode:I

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mSkip:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mIntent:Landroid/content/Intent;

    .line 13
    iput-object p2, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mNext:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mSkip:Z

    .line 15
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getNext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mNext:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mRquestCode:I

    return v0
.end method

.method public isSkip()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mSkip:Z

    return v0
.end method

.method public setNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mNext:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setSkipState(Z)V
    .locals 0
    .param p1, "isSkip"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/sec/android/app/SecSetupWizard/SequenceItem;->mSkip:Z

    .line 26
    return-void
.end method
