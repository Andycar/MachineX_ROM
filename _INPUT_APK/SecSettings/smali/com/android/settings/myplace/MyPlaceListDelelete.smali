.class public Lcom/android/settings/myplace/MyPlaceListDelelete;
.super Landroid/app/ListFragment;
.source "MyPlaceListDelelete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;,
        Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;
    }
.end annotation


# static fields
.field private static PREFIX_COUNT:I

.field private static adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

.field private static mItem_cancel:Landroid/view/MenuItem;

.field private static mItem_del:Landroid/view/MenuItem;

.field private static mItem_trash:Landroid/view/MenuItem;

.field private static mListItem:[Ljava/lang/String;

.field private static mSelectAllCheck:Landroid/widget/CheckBox;

.field private static mlistView:Landroid/widget/ListView;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private listpopup:Landroid/widget/ListPopupWindow;

.field private mActionMode:Landroid/view/ActionMode;

.field private mArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonSellectAll:Landroid/view/View;

.field private mCustomListDel:Landroid/view/View;

.field private mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 477
    return-void
.end method

.method private AddAccessPointToList()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 416
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 418
    const-string v0, "MyPlaceSettings"

    const-string v1, "AddAccessPointToList(), there is no safety zone, return false"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v0, 0x0

    .line 433
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    sub-int v7, v0, v1

    .line 423
    .local v7, "count":I
    new-array v0, v7, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    .line 424
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_2

    .line 425
    sget v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    add-int/2addr v0, v8

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 424
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 430
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 433
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private ToggleAllCheck(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 271
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 272
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 273
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_0

    .line 274
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 276
    :cond_0
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    if-eqz v2, :cond_1

    .line 277
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->setChecked(IZ)V

    .line 278
    sget-object v2, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->notifyDataSetChanged()V

    .line 272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 283
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v2, :cond_3

    .line 284
    iget-object v2, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v2}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    .line 285
    :cond_3
    return-void
.end method

.method static synthetic access$100()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/myplace/MyPlaceListDelelete;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceListDelelete;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$402(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .param p0, "x0"    # Landroid/view/MenuItem;

    .prologue
    .line 58
    sput-object p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/myplace/MyPlaceListDelelete;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/myplace/MyPlaceListDelelete;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->listpopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public static checkDeleteButtonstate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 390
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 391
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 393
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f02011e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 403
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 404
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 405
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 406
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    const v1, 0x7f0201e9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 412
    :cond_1
    :goto_1
    return-void

    .line 397
    :cond_2
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 398
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f020120

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 408
    :cond_3
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_trash:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method public customlistdelete()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 438
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v7

    .line 439
    .local v7, "count":I
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v13

    .line 440
    .local v13, "selectedCount":I
    const-string v0, "MyPlaceSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "customlistdelete(),  count is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", selected item count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-array v8, v13, [I

    .line 444
    .local v8, "deleteList":[I
    if-lez v7, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 446
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 447
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    add-int/2addr v0, v9

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 450
    .local v10, "id":I
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.myplace.MyPlaceProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    aput v10, v8, v12

    .line 452
    add-int/lit8 v12, v12, 0x1

    .line 446
    .end local v10    # "id":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 456
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.settings.MYPLACE_DELETED"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v11, "intent":Landroid/content/Intent;
    const-string v0, "deleteList"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 463
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "i":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "j":I
    :cond_2
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    .line 151
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mCustomListDel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMyPlaceV2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x5

    sput v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->PREFIX_COUNT:I

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040203

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 165
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    :goto_0
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 172
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 175
    :cond_1
    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-virtual {p0, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->setHasOptionsMenu(Z)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mButtonSellectAll:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Lcom/android/settings/myplace/MyPlaceListDelelete$1;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 184
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    .line 186
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 189
    :cond_3
    return-void

    .line 168
    :cond_4
    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040204

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/content/Context;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    .line 169
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 199
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    .line 268
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/res/Configuration;

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 386
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v6, 0x7f0a01d1

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 289
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const v0, 0x7f120002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 293
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 294
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v1, 0x7f0a0cb6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 295
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    .line 296
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 310
    :goto_0
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 311
    return-void

    .line 299
    :cond_0
    invoke-interface {p1, v2, v4, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 302
    const v0, 0x7f0a0cb6

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 306
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    .line 307
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v0, 0x7f040099

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    .line 472
    const-string v0, "MyPlaceSettings"

    const-string v1, "Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 475
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 255
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 256
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 257
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 261
    :goto_1
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    .line 263
    :cond_1
    return-void

    .line 249
    :cond_2
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->setChecked(I)V

    .line 251
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 259
    :cond_3
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v8, 0x7f0a0cb6

    const/4 v3, 0x1

    .line 340
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 377
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 344
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 346
    sget-object v4, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    .line 348
    .local v1, "count":I
    if-ne v1, v3, :cond_0

    .line 349
    const v4, 0x7f0a1e59

    invoke-virtual {p0, v4}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "tempStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    new-instance v4, Lcom/android/settings/myplace/MyPlaceListDelelete$1;

    invoke-direct {v4, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$1;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    invoke-virtual {v0, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 361
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/android/settings/myplace/MyPlaceListDelelete$2;

    invoke-direct {v5, p0}, Lcom/android/settings/myplace/MyPlaceListDelelete$2;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    .line 368
    iget-object v4, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 351
    .end local v2    # "tempStr":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0a1e5a

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "tempStr":Ljava/lang/String;
    goto :goto_1

    .line 373
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "count":I
    .end local v2    # "tempStr":Ljava/lang/String;
    :sswitch_1
    const-string v4, "MyPlaceSettings"

    const-string v5, "MENU_CANCEL is clicked"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7f10010b -> :sswitch_1
        0x7f100706 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 98
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 99
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 315
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 319
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 322
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 323
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 325
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    const v2, 0x7f02011a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 326
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f02011e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 329
    :cond_2
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    const v2, 0x7f020120

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 333
    :cond_3
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_cancel:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 334
    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mItem_del:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 103
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 107
    invoke-direct {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->AddAccessPointToList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040203

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 119
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 125
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 126
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 128
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    iget-object v1, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->initOptionsMenu(Landroid/view/Menu;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mMyPlaceActionModeCallBack:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;

    invoke-virtual {v0}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeCallBack;->updateSelectionMenu()V

    .line 133
    invoke-static {}, Lcom/android/settings/myplace/MyPlaceListDelelete;->checkDeleteButtonstate()V

    .line 137
    :cond_3
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 138
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    invoke-direct {p0, v5}, Lcom/android/settings/myplace/MyPlaceListDelelete;->ToggleAllCheck(Z)V

    goto/16 :goto_0

    .line 121
    :cond_4
    new-instance v0, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {p0}, Lcom/android/settings/myplace/MyPlaceListDelelete;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040204

    sget-object v3, Lcom/android/settings/myplace/MyPlaceListDelelete;->mListItem:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;-><init>(Lcom/android/settings/myplace/MyPlaceListDelelete;Landroid/content/Context;I[Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    .line 122
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mlistView:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/myplace/MyPlaceListDelelete;->adapter:Lcom/android/settings/myplace/MyPlaceListDelelete$MyPlaceActionModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 141
    :cond_5
    sget-object v0, Lcom/android/settings/myplace/MyPlaceListDelelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method
