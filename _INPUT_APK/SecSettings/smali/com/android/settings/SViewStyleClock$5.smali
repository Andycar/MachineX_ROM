.class Lcom/android/settings/SViewStyleClock$5;
.super Ljava/lang/Object;
.source "SViewStyleClock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SViewStyleClock;->showGuidePopup()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SViewStyleClock;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/SViewStyleClock;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/settings/SViewStyleClock$5;->this$0:Lcom/android/settings/SViewStyleClock;

    iput-object p2, p0, Lcom/android/settings/SViewStyleClock$5;->val$layout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 289
    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$5;->val$layout:Landroid/view/View;

    const v4, 0x7f10016a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 290
    .local v0, "check":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$5;->this$0:Lcom/android/settings/SViewStyleClock;

    const-string v4, "com.android.settings.SViewStyleClock"

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/SViewStyleClock;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 293
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 294
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v3, "DoNotShowDialog"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 297
    .end local v1    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$5;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v3}, Lcom/android/settings/SViewStyleClock;->saveDB()V

    .line 298
    iget-object v3, p0, Lcom/android/settings/SViewStyleClock$5;->this$0:Lcom/android/settings/SViewStyleClock;

    invoke-virtual {v3}, Lcom/android/settings/SViewStyleClock;->finish()V

    .line 299
    return-void
.end method
