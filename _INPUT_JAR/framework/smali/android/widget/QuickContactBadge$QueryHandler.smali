.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 338
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 339
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 340
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 25
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 344
    const/4 v14, 0x0

    .line 345
    .local v14, "lookupUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 346
    .local v7, "createUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 347
    .local v16, "trigger":Z
    if-eqz p2, :cond_54

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v10, p2

    .line 349
    .local v10, "extras":Landroid/os/Bundle;
    :goto_a
    packed-switch p1, :pswitch_data_170

    .line 384
    :cond_d
    :goto_d
    if-eqz p3, :cond_12

    .line 385
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v0, v14}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static/range {v17 .. v17}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 392
    if-eqz v16, :cond_de

    if-eqz v14, :cond_de

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 421
    :cond_53
    :goto_53
    return-void

    .line 347
    .end local v10    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_54
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    goto :goto_a

    .line 351
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v10    # "extras":Landroid/os/Bundle;
    :pswitch_5a
    const/16 v16, 0x1

    .line 352
    if-eqz v10, :cond_6b

    if-eqz v10, :cond_6d

    :try_start_60
    const-string/jumbo v17, "uri_content"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6d

    .line 353
    :cond_6b
    const/4 v7, 0x0

    .line 354
    goto :goto_d

    .line 356
    :cond_6d
    const-string/jumbo v17, "tel"

    const-string/jumbo v18, "uri_content"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 360
    :pswitch_7f
    if-eqz p3, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 361
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 362
    .local v8, "contactId":J
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 363
    .local v13, "lookupKey":Ljava/lang/String;
    invoke-static {v8, v9, v13}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 364
    goto/16 :goto_d

    .line 369
    .end local v8    # "contactId":J
    .end local v13    # "lookupKey":Ljava/lang/String;
    :pswitch_a1
    const/16 v16, 0x1

    .line 370
    const-string/jumbo v17, "mailto"

    const-string/jumbo v18, "uri_content"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 375
    :pswitch_b5
    if-eqz p3, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 376
    const/16 v17, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 377
    .restart local v8    # "contactId":J
    const/16 v17, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 378
    .restart local v13    # "lookupKey":Ljava/lang/String;
    invoke-static {v8, v9, v13}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_d4
    .catchall {:try_start_60 .. :try_end_d4} :catchall_d7

    move-result-object v14

    goto/16 :goto_d

    .line 384
    .end local v8    # "contactId":J
    .end local v13    # "lookupKey":Ljava/lang/String;
    :catchall_d7
    move-exception v17

    if-eqz p3, :cond_dd

    .line 385
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_dd
    throw v17

    .line 396
    :cond_de
    if-eqz v7, :cond_53

    .line 398
    new-instance v11, Landroid/content/Intent;

    const-string v17, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    move-object/from16 v0, v17

    invoke-direct {v11, v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 401
    .local v11, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_152

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "android.permission.GET_TASKS"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    .line 403
    .local v15, "permissionResult":I
    if-nez v15, :cond_152

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    # getter for: Landroid/widget/QuickContactBadge;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Landroid/widget/QuickContactBadge;->access$300(Landroid/widget/QuickContactBadge;)Landroid/content/Context;

    move-result-object v17

    const-string v18, "activity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 405
    .local v6, "am":Landroid/app/ActivityManager;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v12

    .line 406
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "PackageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "ReplacedPackageName":Ljava/lang/String;
    const-string v17, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_152

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_152

    .line 410
    invoke-virtual {v11, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    .end local v4    # "PackageName":Ljava/lang/String;
    .end local v5    # "ReplacedPackageName":Ljava/lang/String;
    .end local v6    # "am":Landroid/app/ActivityManager;
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v15    # "permissionResult":I
    :cond_152
    if-eqz v10, :cond_15f

    .line 416
    const-string/jumbo v17, "uri_content"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v11, v10}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 419
    :cond_15f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_53

    .line 349
    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_7f
        :pswitch_a1
        :pswitch_5a
    .end packed-switch
.end method
