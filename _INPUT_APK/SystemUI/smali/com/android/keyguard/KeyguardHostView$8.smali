.class Lcom/android/keyguard/KeyguardHostView$8;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;

.field final synthetic val$pageToShow:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;I)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput p2, p0, Lcom/android/keyguard/KeyguardHostView$8;->val$pageToShow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$8;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardHostView$8;->val$pageToShow:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 970
    return-void
.end method
