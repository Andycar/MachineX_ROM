.class Lcom/android/settings/SViewStyleClock$4;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SViewStyleClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 181
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageButton;

    .line 182
    .local v0, "mClickButton":Landroid/widget/ImageButton;
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 193
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v1}, Lcom/android/settings/SViewStyleClock;->setPreview()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-static {v1}, Lcom/android/settings/SViewStyleClock;->access$100(Lcom/android/settings/SViewStyleClock;)V

    .line 198
    return-void

    .line 184
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/SViewStyleClock$4;->this$0:Lcom/android/settings/SViewStyleClock;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/settings/SViewStyleClock;->access$202(Lcom/android/settings/SViewStyleClock;I)I

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x7f1000c6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
