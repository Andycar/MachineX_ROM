.class Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastChildYTranslationChanged(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;->this$0:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->access$202(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)F

    .line 320
    :cond_0
    return-void
.end method
