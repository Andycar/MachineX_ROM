.class Landroid/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/DatePickerDialog;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .registers 5
    .param p1, "valid"    # Z

    .prologue
    .line 249
    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 250
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_c

    .line 251
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    :cond_c
    return-void
.end method
