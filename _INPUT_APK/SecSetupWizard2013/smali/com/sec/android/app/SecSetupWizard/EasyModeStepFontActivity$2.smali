.class Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$2;
.super Ljava/lang/Object;
.source "EasyModeStepFontActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity$2;->this$0:Lcom/sec/android/app/SecSetupWizard/EasyModeStepFontActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "clickedView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
