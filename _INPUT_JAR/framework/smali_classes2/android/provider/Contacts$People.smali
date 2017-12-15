.class public final Landroid/provider/Contacts$People;
.super Ljava/lang/Object;
.source "Contacts.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Contacts$PeopleColumns;
.implements Landroid/provider/Contacts$PhonesColumns;
.implements Landroid/provider/Contacts$PresenceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "People"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Contacts$People$Extensions;,
        Landroid/provider/Contacts$People$ContactMethods;,
        Landroid/provider/Contacts$People$Phones;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/person"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final GROUPS_PROJECTION:[Ljava/lang/String;

.field public static final PRIMARY_EMAIL_ID:Ljava/lang/String; = "primary_email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_ORGANIZATION_ID:Ljava/lang/String; = "primary_organization"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIMARY_PHONE_ID:Ljava/lang/String; = "primary_phone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 353
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    .line 362
    const-string v0, "content://contacts/people/filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 371
    const-string v0, "content://contacts/deleted_people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->DELETED_CONTENT_URI:Landroid/net/Uri;

    .line 387
    const-string v0, "content://contacts/people/with_email_or_im_filter"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$People;->WITH_EMAIL_OR_IM_FILTER_URI:Landroid/net/Uri;

    .line 545
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 539
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 540
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "person"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 541
    const-string v1, "group_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static addToGroup(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/net/Uri;
    .registers 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .param p3, "groupName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 508
    const-wide/16 v6, 0x0

    .line 509
    .local v6, "groupId":J
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p3, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 511
    .local v8, "groupsCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_24

    .line 513
    :try_start_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 514
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_32

    move-result-wide v6

    .line 517
    :cond_21
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_24
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_37

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to find the My Contacts group"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :catchall_32
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 525
    :cond_37
    invoke-static {p0, p1, p2, v6, v7}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    invoke-static {p0}, Landroid/provider/Contacts$People;->tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J

    move-result-wide v0

    .line 489
    .local v0, "groupId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 490
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to find the My Contacts group"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 493
    :cond_12
    invoke-static {p0, p1, p2, v0, v1}, Landroid/provider/Contacts$People;->addToGroup(Landroid/content/ContentResolver;JJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static createPersonInMyContactsGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "values"    # Landroid/content/ContentValues;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 561
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 562
    .local v0, "contactUri":Landroid/net/Uri;
    if-nez v0, :cond_12

    .line 563
    const-string v2, "Contacts"

    const-string v3, "Failed to create the contact"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 571
    .end local v0    # "contactUri":Landroid/net/Uri;
    :cond_11
    :goto_11
    return-object v0

    .line 567
    .restart local v0    # "contactUri":Landroid/net/Uri;
    :cond_12
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/provider/Contacts$People;->addToMyContactsGroup(Landroid/content/ContentResolver;J)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_11

    .line 568
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v1

    .line 569
    goto :goto_11
.end method

.method public static loadContactPhoto(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "person"    # Landroid/net/Uri;
    .param p2, "placeholderImageResource"    # I
    .param p3, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 635
    if-nez p1, :cond_8

    .line 636
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 644
    :cond_7
    :goto_7
    return-object v0

    .line 639
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 640
    .local v1, "stream":Ljava/io/InputStream;
    if-eqz v1, :cond_16

    invoke-static {v1, v0, p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 641
    .local v0, "bm":Landroid/graphics/Bitmap;
    :cond_16
    if-nez v0, :cond_7

    .line 642
    invoke-static {p2, p0, p3}, Landroid/provider/Contacts$People;->loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method private static loadPlaceholderPhoto(ILandroid/content/Context;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "placeholderImageResource"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 649
    if-nez p0, :cond_4

    .line 650
    const/4 v0, 0x0

    .line 652
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3
.end method

.method public static markAsContacted(Landroid/content/ContentResolver;J)V
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "personId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 448
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 449
    .local v0, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "update_contact_time"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 450
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 453
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "last_time_contacted"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 454
    invoke-virtual {p0, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public static openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "person"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 606
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 607
    .local v1, "photoUri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1f

    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_3d

    move-result v0

    if-nez v0, :cond_25

    .line 618
    :cond_1f
    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_24
    :goto_24
    return-object v3

    .line 612
    :cond_25
    const/4 v0, 0x0

    :try_start_26
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_3d

    move-result-object v7

    .line 613
    .local v7, "data":[B
    if-nez v7, :cond_32

    .line 618
    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .line 616
    :cond_32
    :try_start_32
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_3d

    .line 618
    if-eqz v6, :cond_24

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_24

    .end local v7    # "data":[B
    :catchall_3d
    move-exception v0

    if-eqz v6, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0
.end method

.method public static queryGroups(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "person"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 579
    sget-object v1, Landroid/provider/Contacts$GroupMembership;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "person=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V
    .registers 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "person"    # Landroid/net/Uri;
    .param p2, "data"    # [B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 592
    const-string/jumbo v2, "photo"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 593
    .local v0, "photoUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 594
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 595
    invoke-virtual {p0, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method public static tryGetMyContactsGroupId(Landroid/content/ContentResolver;)J
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 463
    sget-object v1, Landroid/provider/Contacts$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Contacts$People;->GROUPS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "system_id=\'Contacts\'"

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    .local v6, "groupsCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_22

    .line 467
    :try_start_10
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 468
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_25

    move-result-wide v0

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 474
    :goto_1e
    return-wide v0

    .line 471
    :cond_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_22
    const-wide/16 v0, 0x0

    goto :goto_1e

    .line 471
    :catchall_25
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
