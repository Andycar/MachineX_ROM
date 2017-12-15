.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 210
    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/content/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 141
    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "code"    # I

    .prologue
    .line 163
    if-gez p3, :cond_23

    .line 164
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "code "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is invalid: it must be positive"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 167
    :cond_23
    const/4 v10, 0x0

    .line 168
    .local v10, "tokens":[Ljava/lang/String;
    if-eqz p2, :cond_46

    .line 169
    move-object/from16 v5, p2

    .line 171
    .local v5, "newPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_40

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_40

    .line 172
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    :cond_40
    sget-object v11, Landroid/content/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    .line 177
    .end local v5    # "newPath":Ljava/lang/String;
    :cond_46
    if-eqz v10, :cond_85

    array-length v8, v10

    .line 178
    .local v8, "numTokens":I
    :goto_49
    move-object v6, p0

    .line 179
    .local v6, "node":Landroid/content/UriMatcher;
    const/4 v3, -0x1

    .local v3, "i":I
    :goto_4b
    if-ge v3, v8, :cond_9d

    .line 180
    if-gez v3, :cond_87

    move-object v9, p1

    .line 181
    .local v9, "token":Ljava/lang/String;
    :goto_50
    iget-object v2, v6, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 182
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 185
    .local v7, "numChildren":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_57
    if-ge v4, v7, :cond_68

    .line 186
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriMatcher;

    .line 187
    .local v1, "child":Landroid/content/UriMatcher;
    iget-object v11, v1, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8a

    .line 188
    move-object v6, v1

    .line 192
    .end local v1    # "child":Landroid/content/UriMatcher;
    :cond_68
    if-ne v4, v7, :cond_82

    .line 194
    new-instance v1, Landroid/content/UriMatcher;

    invoke-direct {v1}, Landroid/content/UriMatcher;-><init>()V

    .line 195
    .restart local v1    # "child":Landroid/content/UriMatcher;
    const-string v11, "#"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 196
    const/4 v11, 0x1

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    .line 202
    :goto_7a
    iput-object v9, v1, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 203
    iget-object v11, v6, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    move-object v6, v1

    .line 179
    .end local v1    # "child":Landroid/content/UriMatcher;
    :cond_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 177
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "node":Landroid/content/UriMatcher;
    .end local v7    # "numChildren":I
    .end local v8    # "numTokens":I
    .end local v9    # "token":Ljava/lang/String;
    :cond_85
    const/4 v8, 0x0

    goto :goto_49

    .line 180
    .restart local v3    # "i":I
    .restart local v6    # "node":Landroid/content/UriMatcher;
    .restart local v8    # "numTokens":I
    :cond_87
    aget-object v9, v10, v3

    goto :goto_50

    .line 185
    .restart local v1    # "child":Landroid/content/UriMatcher;
    .restart local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .restart local v4    # "j":I
    .restart local v7    # "numChildren":I
    .restart local v9    # "token":Ljava/lang/String;
    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 197
    :cond_8d
    const-string v11, "*"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 198
    const/4 v11, 0x2

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_7a

    .line 200
    :cond_99
    const/4 v11, 0x0

    iput v11, v1, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_7a

    .line 207
    .end local v1    # "child":Landroid/content/UriMatcher;
    .end local v2    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v4    # "j":I
    .end local v7    # "numChildren":I
    .end local v9    # "token":Ljava/lang/String;
    :cond_9d
    move/from16 v0, p3

    iput v0, v6, Landroid/content/UriMatcher;->mCode:I

    .line 208
    return-void
.end method

.method public match(Landroid/net/Uri;)I
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    .line 223
    .local v10, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    .line 225
    .local v4, "li":I
    move-object v9, p0

    .line 227
    .local v9, "node":Landroid/content/UriMatcher;
    if-nez v4, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_14

    .line 228
    iget v12, p0, Landroid/content/UriMatcher;->mCode:I

    .line 271
    :goto_13
    return v12

    .line 231
    :cond_14
    const/4 v1, -0x1

    .local v1, "i":I
    :goto_15
    if-ge v1, v4, :cond_21

    .line 232
    if-gez v1, :cond_24

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    .line 233
    .local v11, "u":Ljava/lang/String;
    :goto_1d
    iget-object v5, v9, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 234
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    if-nez v5, :cond_2c

    .line 271
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v11    # "u":Ljava/lang/String;
    :cond_21
    iget v12, v9, Landroid/content/UriMatcher;->mCode:I

    goto :goto_13

    .line 232
    :cond_24
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    goto :goto_1d

    .line 237
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .restart local v11    # "u":Ljava/lang/String;
    :cond_2c
    const/4 v9, 0x0

    .line 238
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 239
    .local v6, "lj":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_32
    if-ge v2, v6, :cond_41

    .line 240
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 242
    .local v8, "n":Landroid/content/UriMatcher;
    iget v12, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_70

    .line 262
    :cond_3f
    :goto_3f
    if-eqz v9, :cond_69

    .line 266
    .end local v8    # "n":Landroid/content/UriMatcher;
    :cond_41
    if-nez v9, :cond_6c

    .line 267
    const/4 v12, -0x1

    goto :goto_13

    .line 244
    .restart local v8    # "n":Landroid/content/UriMatcher;
    :pswitch_45
    iget-object v12, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3f

    .line 245
    move-object v9, v8

    goto :goto_3f

    .line 249
    :pswitch_4f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    .line 250
    .local v7, "lk":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_54
    if-ge v3, v7, :cond_65

    .line 251
    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 252
    .local v0, "c":C
    const/16 v12, 0x30

    if-lt v0, v12, :cond_3f

    const/16 v12, 0x39

    if-gt v0, v12, :cond_3f

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 256
    .end local v0    # "c":C
    :cond_65
    move-object v9, v8

    .line 257
    goto :goto_3f

    .line 259
    .end local v3    # "k":I
    .end local v7    # "lk":I
    :pswitch_67
    move-object v9, v8

    goto :goto_3f

    .line 239
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 231
    .end local v8    # "n":Landroid/content/UriMatcher;
    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 242
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_45
        :pswitch_4f
        :pswitch_67
    .end packed-switch
.end method
