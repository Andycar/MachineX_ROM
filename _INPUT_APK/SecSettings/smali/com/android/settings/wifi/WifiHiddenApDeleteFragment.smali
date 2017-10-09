.class public Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiHiddenApDeleteFragment.java"


# instance fields
.field private disableOpacity:F

.field private enableOpacity:F

.field private mActionBarView:Landroid/view/View;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListPopup:Landroid/widget/ListPopupWindow;

.field private mListView:Landroid/widget/ListView;

.field private mRemoveButton:Landroid/view/View;

.field private mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveMenu:Landroid/view/MenuItem;

.field private mRemoveTextView:Landroid/widget/TextView;

.field private mSelectAllCheckbox:Landroid/view/View;

.field private mSelectionMenu:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    .line 59
    iput-object v1, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->enableOpacity:F

    .line 70
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->removeListItems()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->updateSelectionMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->enableOpacity:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private addListItems()V
    .locals 6

    .prologue
    .line 307
    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    .line 309
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 310
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 331
    :goto_0
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 317
    .local v0, "accessPoint":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .local v3, "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 325
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 327
    .end local v3    # "in":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 325
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private removeListItems()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 335
    const/4 v5, 0x0

    .line 337
    .local v5, "index":I
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 384
    :goto_0
    return-void

    .line 341
    :cond_0
    const v10, 0x7f0a16c8

    new-array v11, v14, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    invoke-static {v10, v6, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 344
    const/4 v5, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 345
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 346
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 350
    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 351
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 354
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v10}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 356
    const-string v8, "/data/misc/wifi/hiddenAPs.txt"

    .line 358
    .local v8, "path":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .local v3, "fw":Ljava/io/FileWriter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    .line 363
    iget-object v10, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 364
    const-string v10, "\r\n"

    invoke-virtual {v3, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 367
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 373
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2, v14, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 376
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 377
    .local v9, "wm":Landroid/net/wifi/WifiManager;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 378
    .local v7, "msg":Landroid/os/Message;
    const/16 v10, 0xf0

    iput v10, v7, Landroid/os/Message;->what:I

    .line 379
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 380
    .local v0, "args":Landroid/os/Bundle;
    const-string v10, "filename"

    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 382
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 367
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "f":Ljava/io/File;
    .end local v7    # "msg":Landroid/os/Message;
    .end local v9    # "wm":Landroid/net/wifi/WifiManager;
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 369
    .end local v3    # "fw":Ljava/io/FileWriter;
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private updateSelectionMenu()V
    .locals 11

    .prologue
    const v10, 0x7f0a0cba

    const v7, 0x7f0a002d

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 279
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    .line 280
    .local v3, "selectedCount":I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 282
    .local v0, "allCount":I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "format":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectionMenu:Landroid/widget/Button;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "menus":[Ljava/lang/String;
    if-ne v3, v0, :cond_0

    if-eqz v0, :cond_0

    .line 286
    new-array v2, v9, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .line 293
    .restart local v2    # "menus":[Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    new-instance v5, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400fd

    invoke-direct {v5, v6, v7, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 295
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 296
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->enableOpacity:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 297
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 303
    :goto_1
    return-void

    .line 287
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 288
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    .restart local v2    # "menus":[Ljava/lang/String;
    goto :goto_0

    .line 290
    :cond_1
    new-array v2, v9, [Ljava/lang/String;

    .end local v2    # "menus":[Ljava/lang/String;
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v8

    .restart local v2    # "menus":[Ljava/lang/String;
    goto :goto_0

    .line 299
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 300
    iget-object v4, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    const v0, 0x7f0a01d1

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02010e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const/4 v0, 0x2

    const v1, 0x7f0a0cb6

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    .line 247
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    const v1, 0x7f02010f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 251
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 252
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v11, 0x7f1005d8

    const/4 v8, 0x1

    const/4 v10, -0x2

    .line 84
    const v6, 0x7f040273

    invoke-virtual {p1, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 85
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f100472

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    .line 86
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 88
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 89
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 90
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040272

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    .line 92
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    const v7, 0x7f10055b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    .line 93
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    const v7, 0x7f10055c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    .line 94
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveTextView:Landroid/widget/TextView;

    iget v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->disableOpacity:F

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 95
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mRemoveButton:Landroid/view/View;

    new-instance v7, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$1;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$1;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    const v7, 0x7f100559

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "cancelButton":Landroid/view/View;
    new-instance v6, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$2;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v6, Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    .line 113
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    const/16 v7, -0x10

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 115
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    const v7, 0x7f1000c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectionMenu:Landroid/widget/Button;

    .line 116
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectionMenu:Landroid/widget/Button;

    new-instance v7, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$3;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v3, "select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectionMenu:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 130
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 131
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0400fd

    invoke-direct {v7, v8, v9, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListPopup:Landroid/widget/ListPopupWindow;

    new-instance v7, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$4;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 169
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 170
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mActionBarView:Landroid/view/View;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v10, v10, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->updateSelectionMenu()V

    .line 177
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    .end local v1    # "cancelButton":Landroid/view/View;
    .end local v2    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v3    # "select":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->addListItems()V

    .line 204
    new-instance v6, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mContext:Landroid/content/Context;

    const v8, 0x1090010

    iget-object v9, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 205
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mListView:Landroid/widget/ListView;

    new-instance v7, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$6;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 236
    return-object v5

    .line 179
    :cond_0
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->setHasOptionsMenu(Z)V

    .line 181
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 182
    .local v4, "selectAllLayout":Landroid/widget/LinearLayout;
    const v6, 0x7f1005d9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->mSelectAllCheckbox:Landroid/view/View;

    .line 183
    new-instance v6, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment$5;-><init>(Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 274
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 258
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->removeListItems()V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    goto :goto_0

    .line 263
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    goto :goto_0

    .line 267
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiHiddenApDeleteFragment;->finish()V

    goto :goto_0

    .line 256
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method
