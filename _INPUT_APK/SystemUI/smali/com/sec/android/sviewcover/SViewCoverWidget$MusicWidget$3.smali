.class Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;
.super Ljava/lang/Object;
.source "SViewCoverWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)V
    .locals 0

    .prologue
    .line 3068
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3071
    const/4 v0, -0x1

    .line 3072
    .local v0, "keyCode":I
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2400(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_3

    .line 3073
    const/16 v0, 0x58

    .line 3079
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTransportCommandListener : key code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3082
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2700(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Lcom/sec/android/sviewcover/SViewCoverView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverView;->resetScreenOffTime()V

    .line 3083
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3084
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2800(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;I)V

    .line 3085
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->delayResetToMetadata()V

    .line 3088
    :cond_2
    return-void

    .line 3074
    :cond_3
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2500(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 3075
    const/16 v0, 0x57

    goto :goto_0

    .line 3076
    :cond_4
    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;

    invoke-static {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;->access$2600(Lcom/sec/android/sviewcover/SViewCoverWidget$MusicWidget;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3077
    const/16 v0, 0x55

    goto :goto_0
.end method
