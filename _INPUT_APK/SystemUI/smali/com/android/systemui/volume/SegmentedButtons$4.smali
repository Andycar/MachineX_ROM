.class Lcom/android/systemui/volume/SegmentedButtons$4;
.super Ljava/lang/Object;
.source "SegmentedButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SegmentedButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SegmentedButtons;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SegmentedButtons;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/systemui/volume/SegmentedButtons$4;->this$0:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 282
    invoke-static {}, Lcom/android/systemui/volume/SegmentedButtons;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZenModePanel"

    const-string v1, "SegmentedButtons: mSoundButtonsClick.OnClickListener : onClick : call setSelectedValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SegmentedButtons$4;->this$0:Lcom/android/systemui/volume/SegmentedButtons;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Landroid/view/View;)V

    .line 284
    return-void
.end method
