.class Lcom/android/settings/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/UserDictionarySettings$MyAdapter;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/settings/UserDictionarySettings$MyAdapter$1;->this$0:Lcom/android/settings/UserDictionarySettings$MyAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 242
    if-ne p3, v1, :cond_1

    .line 243
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "shortcut":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 251
    const/4 v1, 0x1

    .line 254
    .end local v0    # "shortcut":Ljava/lang/String;
    :goto_1
    return v1

    .restart local v0    # "shortcut":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 247
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "shortcut":Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 254
    goto :goto_1
.end method
