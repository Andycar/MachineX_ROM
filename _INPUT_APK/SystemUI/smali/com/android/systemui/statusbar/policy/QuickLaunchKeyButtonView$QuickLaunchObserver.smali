.class Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;
.super Landroid/database/ContentObserver;
.source "QuickLaunchKeyButtonView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickLaunchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->getQuickLaunchMode()I

    move-result v0

    const-string v1, "StatusBar.QuickLaunchKeyButtonView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickLaunchObserver.onChange() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    # setter for: Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->access$002(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView$QuickLaunchObserver;->this$0:Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;

    # getter for: Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->mQuickLaunchMode:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;)I

    move-result v2

    # invokes: Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->updateQuickLaunchKeyButton(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;->access$100(Lcom/android/systemui/statusbar/policy/QuickLaunchKeyButtonView;I)V

    :cond_0
    return-void
.end method
