.class Lcom/android/systemui/recent/Recents$1;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/Recents;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/Recents;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/Recents;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/systemui/recent/Recents$1;->this$0:Lcom/android/systemui/recent/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/android/systemui/recent/Recents$1;->this$0:Lcom/android/systemui/recent/Recents;

    invoke-static {v1, v0}, Lcom/android/systemui/recent/Recents;->access$000(Lcom/android/systemui/recent/Recents;Landroid/content/Intent;)V

    .line 236
    return-void
.end method
