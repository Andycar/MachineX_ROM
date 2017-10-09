.class Lcom/android/systemui/volume/ZenToast$1;
.super Ljava/lang/Object;
.source "ZenToast.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/ZenToast;->handleShow(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/ZenToast;

.field final synthetic val$message:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/ZenToast;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/volume/ZenToast$1;->this$0:Lcom/android/systemui/volume/ZenToast;

    iput-object p2, p0, Lcom/android/systemui/volume/ZenToast$1;->val$message:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/ZenToast$1;->this$0:Lcom/android/systemui/volume/ZenToast;

    invoke-static {v0}, Lcom/android/systemui/volume/ZenToast;->access$000(Lcom/android/systemui/volume/ZenToast;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/ZenToast$1;->val$message:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    return-void
.end method
