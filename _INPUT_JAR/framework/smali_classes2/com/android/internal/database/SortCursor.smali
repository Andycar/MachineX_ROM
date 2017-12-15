.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 11
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "sortcolumn"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x40

    .line 56
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 34
    iput v7, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    .line 35
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 36
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 38
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 40
    new-instance v5, Lcom/android/internal/database/SortCursor$1;

    invoke-direct {v5, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 57
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 59
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v3, v5

    .line 60
    .local v3, "length":I
    new-array v5, v3, [I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_23
    if-ge v1, v3, :cond_4b

    .line 62
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    if-nez v5, :cond_2e

    .line 61
    :goto_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 65
    :cond_2e
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 67
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 70
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v6, v6, v1

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    goto :goto_2b

    .line 72
    :cond_4b
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 73
    const-string v4, ""

    .line 74
    .local v4, "smallest":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_51
    if-ge v2, v3, :cond_84

    .line 75
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    if-eqz v5, :cond_63

    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 74
    :cond_63
    :goto_63
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 77
    :cond_66
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v6, v6, v2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "current":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_7c

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_63

    .line 79
    :cond_7c
    move-object v4, v0

    .line 80
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    goto :goto_63

    .line 84
    .end local v0    # "current":Ljava/lang/String;
    :cond_84
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_89
    if-ltz v1, :cond_93

    .line 85
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    const/4 v6, -0x2

    aput v6, v5, v1

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_89

    .line 87
    :cond_93
    filled-new-array {v7, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 88
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/database/SortCursor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/database/SortCursor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/database/SortCursor;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/internal/database/SortCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 267
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 268
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_17

    .line 269
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    .line 268
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 270
    :cond_f
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .line 272
    :cond_17
    return-void
.end method

.method public deactivate()V
    .registers 4

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 259
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_17

    .line 260
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    .line 259
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 261
    :cond_f
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_c

    .line 263
    :cond_17
    return-void
.end method

.method public getBlob(I)[B
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 240
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_b

    .line 241
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 248
    :goto_a
    return-object v2

    .line 245
    :cond_b
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 246
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_23

    .line 247
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_20

    .line 248
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 246
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 251
    :cond_23
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .registers 5

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 95
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_19

    .line 96
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_16

    .line 97
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 95
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 100
    :cond_19
    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .param p1, "column"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .param p1, "column"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 16
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    .line 106
    if-ne p1, p2, :cond_5

    .line 181
    :goto_4
    return v8

    .line 117
    :cond_5
    rem-int/lit8 v0, p2, 0x40

    .line 119
    .local v0, "cache_entry":I
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aget v9, v9, v0

    if-ne v9, p2, :cond_32

    .line 120
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aget v7, v9, v0

    .line 121
    .local v7, "which":I
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v7

    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 122
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v9, :cond_24

    .line 123
    const-string v8, "SortCursor"

    const-string v9, "onMove: cache results in a null cursor."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v8, 0x0

    goto :goto_4

    .line 126
    :cond_24
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v10, v10, v0

    aget v10, v10, v7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    iput v0, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    goto :goto_4

    .line 131
    .end local v7    # "which":I
    :cond_32
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 132
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v9

    .line 134
    .local v4, "length":I
    iget v9, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    if-ltz v9, :cond_58

    .line 135
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3d
    if-ge v2, v4, :cond_58

    .line 136
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-nez v9, :cond_48

    .line 135
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 137
    :cond_48
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    iget v11, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    aget-object v10, v10, v11

    aget v10, v10, v2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_45

    .line 141
    .end local v2    # "i":I
    :cond_58
    if-lt p2, p1, :cond_5c

    if-ne p1, v12, :cond_71

    .line 142
    :cond_5c
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5d
    if-ge v2, v4, :cond_70

    .line 143
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-nez v9, :cond_68

    .line 142
    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 144
    :cond_68
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_65

    .line 146
    :cond_70
    const/4 p1, 0x0

    .line 148
    .end local v2    # "i":I
    :cond_71
    if-gez p1, :cond_74

    .line 149
    const/4 p1, 0x0

    .line 153
    :cond_74
    const/4 v6, -0x1

    .line 154
    .local v6, "smallestIdx":I
    move v2, p1

    .restart local v2    # "i":I
    :goto_76
    if-gt v2, p2, :cond_aa

    .line 155
    const-string v5, ""

    .line 156
    .local v5, "smallest":Ljava/lang/String;
    const/4 v6, -0x1

    .line 157
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7c
    if-ge v3, v4, :cond_a8

    .line 158
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    if-eqz v9, :cond_8e

    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-eqz v9, :cond_91

    .line 157
    :cond_8e
    :goto_8e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 161
    :cond_91
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    aget v10, v10, v3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "current":Ljava/lang/String;
    if-ltz v6, :cond_a5

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_8e

    .line 163
    :cond_a5
    move-object v5, v1

    .line 164
    move v6, v3

    goto :goto_8e

    .line 167
    .end local v1    # "current":Ljava/lang/String;
    :cond_a8
    if-ne v2, p2, :cond_d2

    .line 172
    .end local v3    # "j":I
    .end local v5    # "smallest":Ljava/lang/String;
    :cond_aa
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    iput-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 173
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    aput p2, v9, v0

    .line 174
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    aput v6, v9, v0

    .line 175
    const/4 v2, 0x0

    :goto_b9
    if-ge v2, v4, :cond_e2

    .line 176
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v2

    if-eqz v9, :cond_cf

    .line 177
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    aget-object v9, v9, v0

    iget-object v10, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v10, v10, v2

    invoke-interface {v10}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    aput v10, v9, v2

    .line 175
    :cond_cf
    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 168
    .restart local v3    # "j":I
    .restart local v5    # "smallest":Ljava/lang/String;
    :cond_d2
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    if-eqz v9, :cond_df

    .line 169
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 154
    :cond_df
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 180
    .end local v3    # "j":I
    .end local v5    # "smallest":Ljava/lang/String;
    :cond_e2
    iput v12, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    goto/16 :goto_4
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 276
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 277
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_16

    .line 278
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    .line 279
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 277
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 282
    :cond_16
    return-void
.end method

.method public requery()Z
    .registers 4

    .prologue
    .line 297
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 298
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_1b

    .line 299
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_f

    .line 298
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 301
    :cond_f
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_c

    .line 302
    const/4 v2, 0x0

    .line 306
    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x1

    goto :goto_1a
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 286
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 287
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_16

    .line 288
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_13

    .line 289
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 287
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :cond_16
    return-void
.end method
