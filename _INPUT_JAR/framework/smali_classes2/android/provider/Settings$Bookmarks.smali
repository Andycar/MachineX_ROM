.class public final Landroid/provider/Settings$Bookmarks;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmarks"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final INTENT:Ljava/lang/String; = "intent"

.field public static final ORDERING:Ljava/lang/String; = "ordering"

.field public static final SHORTCUT:Ljava/lang/String; = "shortcut"

.field private static final TAG:Ljava/lang/String; = "Bookmarks"

.field public static final TITLE:Ljava/lang/String; = "title"

.field private static final sIntentProjection:[Ljava/lang/String;

.field private static final sShortcutProjection:[Ljava/lang/String;

.field private static final sShortcutSelection:Ljava/lang/String; = "shortcut=?"


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11833
    const-string v0, "content://settings/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    .line 11886
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "intent"

    aput-object v1, v0, v2

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    .line 11887
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "shortcut"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/Settings$Bookmarks;->sShortcutProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "folder"    # Ljava/lang/String;
    .param p4, "shortcut"    # C
    .param p5, "ordering"    # I

    .prologue
    const/4 v5, 0x0

    .line 11950
    if-eqz p4, :cond_14

    .line 11951
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11955
    :cond_14
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 11956
    .local v0, "values":Landroid/content/ContentValues;
    if-eqz p2, :cond_21

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11957
    :cond_21
    if-eqz p3, :cond_28

    const-string v1, "folder"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11958
    :cond_28
    const-string v1, "intent"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11959
    if-eqz p4, :cond_3d

    const-string/jumbo v1, "shortcut"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11960
    :cond_3d
    const-string v1, "ordering"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 11961
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getIntentForShortcut(Landroid/content/ContentResolver;C)Landroid/content/Intent;
    .registers 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "shortcut"    # C

    .prologue
    const/4 v5, 0x0

    .line 11902
    const/4 v8, 0x0

    .line 11904
    .local v8, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Settings$Bookmarks;->sIntentProjection:[Ljava/lang/String;

    const-string/jumbo v3, "shortcut=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v5, "ordering"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 11909
    .local v6, "c":Landroid/database/Cursor;
    :goto_19
    if-nez v8, :cond_41

    :try_start_1b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3a

    move-result v0

    if-eqz v0, :cond_41

    .line 11911
    :try_start_21
    const-string v0, "intent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 11912
    .local v9, "intentURI":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v9, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2f
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_2f} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_2f} :catch_31
    .catchall {:try_start_21 .. :try_end_2f} :catchall_3a

    move-result-object v8

    goto :goto_19

    .line 11915
    .end local v9    # "intentURI":Ljava/lang/String;
    :catch_31
    move-exception v7

    .line 11917
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    :try_start_32
    const-string v0, "Bookmarks"

    const-string v1, "Intent column not found"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_3a

    goto :goto_19

    .line 11921
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_3a
    move-exception v0

    if-eqz v6, :cond_40

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0

    :cond_41
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 11924
    :cond_46
    return-object v8

    .line 11913
    :catch_47
    move-exception v0

    goto :goto_19
.end method

.method public static getLabelForFolder(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "folder"    # Ljava/lang/String;

    .prologue
    .line 11976
    return-object p1
.end method

.method public static getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 11991
    const-string/jumbo v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 11992
    .local v7, "titleColumn":I
    const-string v8, "intent"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 11993
    .local v3, "intentColumn":I
    if-eq v7, v9, :cond_13

    if-ne v3, v9, :cond_1b

    .line 11994
    :cond_13
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The cursor must contain the TITLE and INTENT columns."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 11998
    :cond_1b
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 11999
    .local v6, "title":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_26

    .line 12017
    .end local v6    # "title":Ljava/lang/String;
    :goto_25
    return-object v6

    .line 12003
    .restart local v6    # "title":Ljava/lang/String;
    :cond_26
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 12004
    .local v4, "intentUri":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 12005
    const-string v6, ""

    goto :goto_25

    .line 12010
    :cond_33
    const/4 v8, 0x0

    :try_start_34
    invoke-static {v4, v8}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_37
    .catch Ljava/net/URISyntaxException; {:try_start_34 .. :try_end_37} :catch_48

    move-result-object v2

    .line 12015
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 12016
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v2, v10}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 12017
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4c

    invoke-virtual {v1, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_46
    move-object v6, v8

    goto :goto_25

    .line 12011
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_48
    move-exception v0

    .line 12012
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v6, ""

    goto :goto_25

    .line 12017
    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_4c
    const-string v8, ""

    goto :goto_46
.end method