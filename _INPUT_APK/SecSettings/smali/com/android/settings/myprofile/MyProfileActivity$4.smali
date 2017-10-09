.class Lcom/android/settings/myprofile/MyProfileActivity$4;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/myprofile/MyProfileActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/myprofile/MyProfileActivity;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/android/settings/myprofile/MyProfileActivity;->access$000(Lcom/android/settings/myprofile/MyProfileActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#############  Callback from GradientColorPickerView -> onColorChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/android/settings/myprofile/MyProfileActivity;->access$200(Lcom/android/settings/myprofile/MyProfileActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/android/settings/myprofile/MyProfileActivity;->access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setKeepCustomColor(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/android/settings/myprofile/MyProfileActivity;->access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$4;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->access$100(Lcom/android/settings/myprofile/MyProfileActivity;I)V

    .line 522
    return-void
.end method
