.class Lcom/android/systemui/egg/LLand$1;
.super Ljava/lang/Object;
.source "LLand.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/egg/LLand;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/LLand;


# direct methods
.method constructor <init>(Lcom/android/systemui/egg/LLand;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/systemui/egg/LLand$1;->this$0:Lcom/android/systemui/egg/LLand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 2
    .param p1, "timeAnimator"    # Landroid/animation/TimeAnimator;
    .param p2, "t"    # J
    .param p4, "dt"    # J

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/egg/LLand$1;->this$0:Lcom/android/systemui/egg/LLand;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/systemui/egg/LLand;->access$000(Lcom/android/systemui/egg/LLand;JJ)V

    .line 310
    return-void
.end method
