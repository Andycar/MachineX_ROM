.class public abstract Landroid/view/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/LayoutInflater$BlinkLayout;,
        Landroid/view/LayoutInflater$FactoryMerger;,
        Landroid/view/LayoutInflater$Factory2;,
        Landroid/view/LayoutInflater$Factory;,
        Landroid/view/LayoutInflater$Filter;
    }
.end annotation


# static fields
.field private static final ATTRS_THEME:[I

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_1995:Ljava/lang/String; = "blink"

.field private static final TAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final TAG_MERGE:Ljava/lang/String; = "merge"

.field private static final TAG_REQUEST_FOCUS:Ljava/lang/String; = "requestFocus"

.field private static final TAG_TAG:Ljava/lang/String; = "tag"

.field static final mConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final mConstructorArgs:[Ljava/lang/Object;

.field protected final mContext:Landroid/content/Context;

.field private mFactory:Landroid/view/LayoutInflater$Factory;

.field private mFactory2:Landroid/view/LayoutInflater$Factory2;

.field private mFactorySet:Z

.field private mFilter:Landroid/view/LayoutInflater$Filter;

.field private mFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivateFactory:Landroid/view/LayoutInflater$Factory2;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    const-class v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/LayoutInflater;->TAG:Ljava/lang/String;

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    aput-object v1, v0, v2

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v3

    sput-object v0, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    .line 100
    new-array v0, v3, [I

    const/high16 v1, 0x1010000

    aput v1, v0, v2

    sput-object v0, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 197
    iput-object p1, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 198
    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .registers 4
    .param p1, "original"    # Landroid/view/LayoutInflater;
    .param p2, "newContext"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 209
    iput-object p2, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .line 210
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 211
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    .line 212
    iget-object v0, p1, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 213
    iget-object v0, p1, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    .line 214
    return-void
.end method

.method private failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 654
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Class not allowed to be inflated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static from(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 222
    .local v0, "LayoutInflater":Landroid/view/LayoutInflater;
    if-nez v0, :cond_12

    .line 223
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "LayoutInflater not found."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 225
    :cond_12
    return-object v0
.end method

.method private parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V
    .registers 26
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "inheritContext"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_150

    .line 871
    const/4 v3, 0x0

    const-string v7, "layout"

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v7, v8}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v15

    .line 872
    .local v15, "layout":I
    if-nez v15, :cond_46

    .line 873
    const/4 v3, 0x0

    const-string v7, "layout"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 874
    .local v18, "value":Ljava/lang/String;
    if-nez v18, :cond_25

    .line 875
    new-instance v3, Landroid/view/InflateException;

    const-string v7, "You must specifiy a layout in the include tag: <include layout=\"@layout/layoutID\" />"

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 878
    :cond_25
    new-instance v3, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You must specifiy a valid layout reference. The layout ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not valid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 882
    .end local v18    # "value":Ljava/lang/String;
    :cond_46
    invoke-virtual/range {p0 .. p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 886
    .local v4, "childParser":Landroid/content/res/XmlResourceParser;
    :try_start_52
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 888
    .local v6, "childAttrs":Landroid/util/AttributeSet;
    :cond_56
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v17

    .local v17, "type":I
    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_64

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_56

    .line 893
    :cond_64
    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_8b

    .line 894
    new-instance v3, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": No start tag found!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_86
    .catchall {:try_start_52 .. :try_end_86} :catchall_86

    .line 963
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v17    # "type":I
    :catchall_86
    move-exception v3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 898
    .restart local v6    # "childAttrs":Landroid/util/AttributeSet;
    .restart local v17    # "type":I
    :cond_8b
    :try_start_8b
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 900
    .local v10, "childName":Ljava/lang/String;
    const-string/jumbo v3, "merge"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 902
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V
    :try_end_a2
    .catchall {:try_start_8b .. :try_end_a2} :catchall_86

    .line 963
    :goto_a2
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    .line 970
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 972
    .local v11, "currentDepth":I
    :cond_a9
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_b8

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v11, :cond_bd

    :cond_b8
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_a9

    .line 975
    :cond_bd
    return-void

    .line 904
    .end local v11    # "currentDepth":I
    :cond_be
    :try_start_be
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0, v1, v10, v6, v2}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v5

    .line 907
    .local v5, "view":Landroid/view/View;
    sget-boolean v3, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v3, :cond_df

    instance-of v3, v4, Landroid/content/res/XmlResourceParser;

    if-eqz v3, :cond_df

    .line 908
    if-eqz v4, :cond_df

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_df

    .line 909
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setXmlFilePath(Ljava/lang/CharSequence;)V

    .line 911
    :cond_df
    move-object/from16 v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v13, v0
    :try_end_e4
    .catchall {:try_start_be .. :try_end_e4} :catchall_86

    .line 921
    .local v13, "group":Landroid/view/ViewGroup;
    const/16 v16, 0x0

    .line 923
    .local v16, "params":Landroid/view/ViewGroup$LayoutParams;
    :try_start_e6
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_eb
    .catch Ljava/lang/RuntimeException; {:try_start_e6 .. :try_end_eb} :catch_12a
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_137

    move-result-object v16

    .line 927
    if-eqz v16, :cond_f3

    .line 928
    :try_start_ee
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    :cond_f3
    :goto_f3
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V

    .line 937
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    const/4 v8, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v3, v0, v7, v8, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 939
    .local v9, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x9

    const/4 v7, -0x1

    invoke-virtual {v9, v3, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 941
    .local v14, "id":I
    const/16 v3, 0x15

    const/4 v7, -0x1

    invoke-virtual {v9, v3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 942
    .local v19, "visibility":I
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 944
    const/4 v3, -0x1

    if-eq v14, v3, :cond_122

    .line 945
    invoke-virtual {v5, v14}, Landroid/view/View;->setId(I)V

    .line 948
    :cond_122
    packed-switch v19, :pswitch_data_158

    .line 960
    :goto_125
    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_128
    .catchall {:try_start_ee .. :try_end_128} :catchall_86

    goto/16 :goto_a2

    .line 924
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v14    # "id":I
    .end local v19    # "visibility":I
    :catch_12a
    move-exception v12

    .line 925
    .local v12, "e":Ljava/lang/RuntimeException;
    :try_start_12b
    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    :try_end_12e
    .catchall {:try_start_12b .. :try_end_12e} :catchall_137

    move-result-object v16

    .line 927
    if-eqz v16, :cond_f3

    .line 928
    :try_start_131
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f3

    .line 927
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :catchall_137
    move-exception v3

    if-eqz v16, :cond_13f

    .line 928
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_13f
    throw v3

    .line 950
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    .restart local v14    # "id":I
    .restart local v19    # "visibility":I
    :pswitch_140
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_125

    .line 953
    :pswitch_145
    const/4 v3, 0x4

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_125

    .line 956
    :pswitch_14a
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_14f
    .catchall {:try_start_131 .. :try_end_14f} :catchall_86

    goto :goto_125

    .line 967
    .end local v4    # "childParser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "childAttrs":Landroid/util/AttributeSet;
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "childName":Ljava/lang/String;
    .end local v13    # "group":Landroid/view/ViewGroup;
    .end local v14    # "id":I
    .end local v15    # "layout":I
    .end local v16    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "type":I
    .end local v19    # "visibility":I
    :cond_150
    new-instance v3, Landroid/view/InflateException;

    const-string v7, "<include /> can only be used inside of a ViewGroup"

    invoke-direct {v3, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 948
    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_140
        :pswitch_145
        :pswitch_14a
    .end packed-switch
.end method

.method private parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 837
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 839
    .local v0, "currentDepth":I
    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_17

    :cond_14
    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 842
    :cond_17
    return-void
.end method

.method private parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 852
    iget-object v5, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/R$styleable;->ViewTag:[I

    invoke-virtual {v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 854
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v8, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 855
    .local v1, "key":I
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 856
    .local v4, "value":Ljava/lang/CharSequence;
    invoke-virtual {p2, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 857
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 859
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 861
    .local v0, "currentDepth":I
    :cond_1c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_29

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_2b

    :cond_29
    if-ne v3, v8, :cond_1c

    .line 864
    :cond_2b
    return-void
.end method


# virtual methods
.method public abstract cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.end method

.method public final createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 570
    sget-object v11, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 571
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    const/4 v5, 0x0

    .line 574
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/View;>;"
    const-wide/16 v12, 0x8

    :try_start_b
    invoke-static {v12, v13, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 576
    if-nez v6, :cond_7c

    .line 578
    iget-object v11, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eqz p2, :cond_7a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_2b
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 581
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v11, :cond_46

    if-eqz v5, :cond_46

    .line 582
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v11, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v2

    .line 583
    .local v2, "allowed":Z
    if-nez v2, :cond_46

    .line 584
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V

    .line 587
    .end local v2    # "allowed":Z
    :cond_46
    sget-object v11, Landroid/view/LayoutInflater;->mConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 588
    sget-object v11, Landroid/view/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    :cond_51
    :goto_51
    iget-object v4, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 611
    .local v4, "args":[Ljava/lang/Object;
    const/4 v11, 0x1

    aput-object p3, v4, v11

    .line 613
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 614
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 615
    .local v9, "view":Landroid/view/View;
    instance-of v11, v9, Landroid/view/ViewStub;

    if-eqz v11, :cond_74

    .line 617
    move-object v0, v9

    check-cast v0, Landroid/view/ViewStub;

    move-object v10, v0

    .line 618
    .local v10, "viewStub":Landroid/view/ViewStub;
    const/4 v11, 0x0

    aget-object v11, v4, v11

    check-cast v11, Landroid/content/Context;

    invoke-virtual {p0, v11}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/ViewStub;->setLayoutInflater(Landroid/view/LayoutInflater;)V
    :try_end_74
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_74} :catch_c9
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_74} :catch_11b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_74} :catch_155
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_74} :catch_157
    .catchall {:try_start_b .. :try_end_74} :catchall_103

    .line 646
    .end local v10    # "viewStub":Landroid/view/ViewStub;
    :cond_74
    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-object v9

    .end local v4    # "args":[Ljava/lang/Object;
    .end local v9    # "view":Landroid/view/View;
    :cond_7a
    move-object v11, p1

    .line 578
    goto :goto_2b

    .line 591
    :cond_7c
    :try_start_7c
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    if-eqz v11, :cond_51

    .line 593
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 594
    .local v3, "allowedState":Ljava/lang/Boolean;
    if-nez v3, :cond_10e

    .line 596
    iget-object v11, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    if-eqz p2, :cond_10a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_a5
    invoke-virtual {v12, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Landroid/view/View;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 599
    if-eqz v5, :cond_10c

    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    invoke-interface {v11, v5}, Landroid/view/LayoutInflater$Filter;->onLoadClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_10c

    const/4 v2, 0x1

    .line 600
    .restart local v2    # "allowed":Z
    :goto_ba
    iget-object v11, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    if-nez v2, :cond_51

    .line 602
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_c8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7c .. :try_end_c8} :catch_c9
    .catch Ljava/lang/ClassCastException; {:try_start_7c .. :try_end_c8} :catch_11b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7c .. :try_end_c8} :catch_155
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_c8} :catch_157
    .catchall {:try_start_7c .. :try_end_c8} :catchall_103

    goto :goto_51

    .line 622
    .end local v2    # "allowed":Z
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    :catch_c9
    move-exception v7

    .line 623
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    :try_start_ca
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Error inflating class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_f4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_f4
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 626
    .local v8, "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 627
    throw v8
    :try_end_103
    .catchall {:try_start_ca .. :try_end_103} :catchall_103

    .line 646
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .end local v8    # "ie":Landroid/view/InflateException;
    :catchall_103
    move-exception v11

    const-wide/16 v12, 0x8

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v11

    .restart local v3    # "allowedState":Ljava/lang/Boolean;
    .restart local p1    # "name":Ljava/lang/String;
    :cond_10a
    move-object v11, p1

    .line 596
    goto :goto_a5

    .line 599
    :cond_10c
    const/4 v2, 0x0

    goto :goto_ba

    .line 604
    :cond_10e
    :try_start_10e
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v11}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    .line 605
    invoke-direct/range {p0 .. p3}, Landroid/view/LayoutInflater;->failNotAllowed(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)V
    :try_end_119
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10e .. :try_end_119} :catch_c9
    .catch Ljava/lang/ClassCastException; {:try_start_10e .. :try_end_119} :catch_11b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10e .. :try_end_119} :catch_155
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_119} :catch_157
    .catchall {:try_start_10e .. :try_end_119} :catchall_103

    goto/16 :goto_51

    .line 629
    .end local v3    # "allowedState":Ljava/lang/Boolean;
    :catch_11b
    move-exception v7

    .line 631
    .local v7, "e":Ljava/lang/ClassCastException;
    :try_start_11c
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Class is not a View "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz p2, :cond_146

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "name":Ljava/lang/String;
    :cond_146
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 634
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 635
    throw v8

    .line 636
    .end local v7    # "e":Ljava/lang/ClassCastException;
    .end local v8    # "ie":Landroid/view/InflateException;
    .restart local p1    # "name":Ljava/lang/String;
    :catch_155
    move-exception v7

    .line 638
    .local v7, "e":Ljava/lang/ClassNotFoundException;
    throw v7

    .line 639
    .end local v7    # "e":Ljava/lang/ClassNotFoundException;
    :catch_157
    move-exception v7

    .line 640
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Landroid/view/InflateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Error inflating class "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v5, :cond_180

    const-string v11, "<unknown>"

    :goto_171
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 643
    .restart local v8    # "ie":Landroid/view/InflateException;
    invoke-virtual {v8, v7}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 644
    throw v8

    .line 640
    .end local v8    # "ie":Landroid/view/InflateException;
    :cond_180
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_183
    .catchall {:try_start_11c .. :try_end_183} :catchall_103

    move-result-object v11

    goto :goto_171
.end method

.method createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;
    .registers 16
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "inheritContext"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 703
    const-string/jumbo v8, "view"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 704
    const-string v8, "class"

    invoke-interface {p3, v10, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 708
    :cond_11
    if-eqz p1, :cond_3c

    if-eqz p4, :cond_3c

    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 715
    .local v6, "viewContext":Landroid/content/Context;
    :goto_19
    sget-object v8, Landroid/view/LayoutInflater;->ATTRS_THEME:[I

    invoke-virtual {v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 716
    .local v3, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 717
    .local v4, "themeResId":I
    if-eqz v4, :cond_2b

    .line 718
    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v6, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .end local v6    # "viewContext":Landroid/content/Context;
    .local v7, "viewContext":Landroid/content/Context;
    move-object v6, v7

    .line 720
    .end local v7    # "viewContext":Landroid/content/Context;
    .restart local v6    # "viewContext":Landroid/content/Context;
    :cond_2b
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 722
    const-string v8, "blink"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 724
    new-instance v5, Landroid/view/LayoutInflater$BlinkLayout;

    invoke-direct {v5, v6, p3}, Landroid/view/LayoutInflater$BlinkLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 758
    :cond_3b
    :goto_3b
    return-object v5

    .line 711
    .end local v3    # "ta":Landroid/content/res/TypedArray;
    .end local v4    # "themeResId":I
    .end local v6    # "viewContext":Landroid/content/Context;
    :cond_3c
    iget-object v6, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    .restart local v6    # "viewContext":Landroid/content/Context;
    goto :goto_19

    .line 731
    .restart local v3    # "ta":Landroid/content/res/TypedArray;
    .restart local v4    # "themeResId":I
    :cond_3f
    :try_start_3f
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    if-eqz v8, :cond_76

    .line 732
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v8, p1, p2, v6, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 739
    .local v5, "view":Landroid/view/View;
    :goto_49
    if-nez v5, :cond_55

    iget-object v8, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-eqz v8, :cond_55

    .line 740
    iget-object v8, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v8, p1, p2, v6, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 743
    :cond_55
    if-nez v5, :cond_3b

    .line 744
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v2, v8, v9

    .line 745
    .local v2, "lastContext":Ljava/lang/Object;
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9
    :try_end_61
    .catch Landroid/view/InflateException; {:try_start_3f .. :try_end_61} :catch_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_61} :catch_90
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_61} :catch_b5

    .line 747
    const/4 v8, -0x1

    const/16 v9, 0x2e

    :try_start_64
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ne v8, v9, :cond_83

    .line 748
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_89

    move-result-object v5

    .line 753
    :goto_6e
    :try_start_6e
    iget-object v8, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9
    :try_end_73
    .catch Landroid/view/InflateException; {:try_start_6e .. :try_end_73} :catch_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6e .. :try_end_73} :catch_90
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_73} :catch_b5

    goto :goto_3b

    .line 760
    .end local v2    # "lastContext":Ljava/lang/Object;
    .end local v5    # "view":Landroid/view/View;
    :catch_74
    move-exception v0

    .line 761
    .local v0, "e":Landroid/view/InflateException;
    throw v0

    .line 733
    .end local v0    # "e":Landroid/view/InflateException;
    :cond_76
    :try_start_76
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-eqz v8, :cond_81

    .line 734
    iget-object v8, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v8, p2, v6, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_7f
    .catch Landroid/view/InflateException; {:try_start_76 .. :try_end_7f} :catch_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_76 .. :try_end_7f} :catch_90
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_b5

    move-result-object v5

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_49

    .line 736
    .end local v5    # "view":Landroid/view/View;
    :cond_81
    const/4 v5, 0x0

    .restart local v5    # "view":Landroid/view/View;
    goto :goto_49

    .line 750
    .restart local v2    # "lastContext":Ljava/lang/Object;
    :cond_83
    const/4 v8, 0x0

    :try_start_84
    invoke-virtual {p0, p2, v8, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_89

    move-result-object v5

    goto :goto_6e

    .line 753
    :catchall_89
    move-exception v8

    :try_start_8a
    iget-object v9, p0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    throw v8
    :try_end_90
    .catch Landroid/view/InflateException; {:try_start_8a .. :try_end_90} :catch_74
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8a .. :try_end_90} :catch_90
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_90} :catch_b5

    .line 763
    .end local v2    # "lastContext":Ljava/lang/Object;
    .end local v5    # "view":Landroid/view/View;
    :catch_90
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error inflating class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 766
    .local v1, "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 767
    throw v1

    .line 769
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v1    # "ie":Landroid/view/InflateException;
    :catch_b5
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/view/InflateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Error inflating class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v1    # "ie":Landroid/view/InflateException;
    invoke-virtual {v1, v0}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 773
    throw v1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getFactory()Landroid/view/LayoutInflater$Factory;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method public final getFactory2()Landroid/view/LayoutInflater$Factory2;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    return-object v0
.end method

.method public getFilter()Landroid/view/LayoutInflater$Filter;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 366
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 7
    .param p1, "resource"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 407
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 413
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 415
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_c
    invoke-virtual {p0, v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_14

    move-result-object v2

    .line 417
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :catchall_14
    move-exception v2

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 386
    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .registers 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "attachToRoot"    # Z

    .prologue
    .line 444
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    monitor-enter v15

    .line 445
    const-wide/16 v2, 0x8

    :try_start_7
    const-string v6, "inflate"

    invoke-static {v2, v3, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 447
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    .line 448
    .local v5, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v10, v2, v3

    check-cast v10, Landroid/content/Context;

    .line 449
    .local v10, "lastContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/LayoutInflater;->mContext:Landroid/content/Context;

    aput-object v6, v2, v3
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_6f

    .line 450
    move-object/from16 v13, p2

    .line 455
    .local v13, "result":Landroid/view/View;
    :cond_26
    :try_start_26
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v2, 0x2

    if-eq v14, v2, :cond_30

    const/4 v2, 0x1

    if-ne v14, v2, :cond_26

    .line 460
    :cond_30
    const/4 v2, 0x2

    if-eq v14, v2, :cond_72

    .line 461
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": No start tag found!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_50} :catch_50
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_50} :catch_8b
    .catchall {:try_start_26 .. :try_end_50} :catchall_5e

    .line 529
    .end local v14    # "type":I
    :catch_50
    move-exception v8

    .line 530
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_51
    new-instance v9, Landroid/view/InflateException;

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 531
    .local v9, "ex":Landroid/view/InflateException;
    invoke-virtual {v9, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 532
    throw v9
    :try_end_5e
    .catchall {:try_start_51 .. :try_end_5e} :catchall_5e

    .line 541
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "ex":Landroid/view/InflateException;
    :catchall_5e
    move-exception v2

    :try_start_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v3, v6

    throw v2

    .line 548
    .end local v5    # "attrs":Landroid/util/AttributeSet;
    .end local v10    # "lastContext":Landroid/content/Context;
    .end local v13    # "result":Landroid/view/View;
    :catchall_6f
    move-exception v2

    monitor-exit v15
    :try_end_71
    .catchall {:try_start_5f .. :try_end_71} :catchall_6f

    throw v2

    .line 465
    .restart local v5    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "lastContext":Landroid/content/Context;
    .restart local v13    # "result":Landroid/view/View;
    .restart local v14    # "type":I
    :cond_72
    :try_start_72
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 474
    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v2, "merge"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 475
    if-eqz p2, :cond_83

    if-nez p3, :cond_b4

    .line 476
    :cond_83
    new-instance v2, Landroid/view/InflateException;

    const-string v3, "<merge /> can be used only with a valid ViewGroup root and attachToRoot=true"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_72 .. :try_end_8b} :catch_50
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_8b} :catch_8b
    .catchall {:try_start_72 .. :try_end_8b} :catchall_5e

    .line 533
    .end local v11    # "name":Ljava/lang/String;
    .end local v14    # "type":I
    :catch_8b
    move-exception v8

    .line 534
    .local v8, "e":Ljava/io/IOException;
    :try_start_8c
    new-instance v9, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v9    # "ex":Landroid/view/InflateException;
    invoke-virtual {v9, v8}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 538
    throw v9
    :try_end_b4
    .catchall {:try_start_8c .. :try_end_b4} :catchall_5e

    .line 480
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "ex":Landroid/view/InflateException;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v14    # "type":I
    :cond_b4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    :try_start_bc
    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V
    :try_end_bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bc .. :try_end_bf} :catch_50
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_8b
    .catchall {:try_start_bc .. :try_end_bf} :catchall_5e

    .line 541
    :cond_bf
    :goto_bf
    :try_start_bf
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    .line 542
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/LayoutInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v6, 0x0

    aput-object v6, v2, v3

    .line 545
    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 547
    monitor-exit v15
    :try_end_d4
    .catchall {:try_start_bf .. :try_end_d4} :catchall_6f

    return-object v13

    .line 483
    :cond_d5
    const/4 v2, 0x0

    :try_start_d6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11, v5, v2}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v4

    .line 486
    .local v4, "temp":Landroid/view/View;
    sget-boolean v2, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v2, :cond_101

    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_101

    .line 487
    if-eqz p1, :cond_101

    move-object/from16 v0, p1

    check-cast v0, Landroid/content/res/XmlResourceParser;

    move-object v2, v0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_101

    .line 488
    move-object/from16 v0, p1

    check-cast v0, Landroid/content/res/XmlResourceParser;

    move-object v2, v0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/view/View;->setXmlFilePath(Ljava/lang/CharSequence;)V

    .line 491
    :cond_101
    const/4 v12, 0x0

    .line 493
    .local v12, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_10f

    .line 499
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 500
    if-nez p3, :cond_10f

    .line 503
    invoke-virtual {v4, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    :cond_10f
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V

    .line 518
    if-eqz p2, :cond_121

    if-eqz p3, :cond_121

    .line 519
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_121
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d6 .. :try_end_121} :catch_50
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_121} :catch_8b
    .catchall {:try_start_d6 .. :try_end_121} :catchall_5e

    .line 524
    :cond_121
    if-eqz p2, :cond_125

    if-nez p3, :cond_bf

    .line 525
    :cond_125
    move-object v13, v4

    goto :goto_bf
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 689
    invoke-virtual {p0, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 672
    const-string v0, "android.view."

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V
    .registers 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "finishInflate"    # Z
    .param p5, "inheritContext"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 793
    .local v7, "depth":I
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .local v10, "type":I
    const/4 v1, 0x3

    if-ne v10, v1, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v7, :cond_99

    :cond_11
    const/4 v1, 0x1

    if-eq v10, v1, :cond_99

    .line 795
    const/4 v1, 0x2

    if-ne v10, v1, :cond_4

    .line 799
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 801
    .local v8, "name":Ljava/lang/String;
    const-string/jumbo v1, "requestFocus"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 802
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;->parseRequestFocus(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;)V

    goto :goto_4

    .line 803
    :cond_28
    const-string/jumbo v1, "tag"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 804
    invoke-direct {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->parseViewTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 805
    :cond_35
    const-string v1, "include"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 806
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-nez v1, :cond_4b

    .line 807
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<include /> cannot be the root element"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 809
    :cond_4b
    move/from16 v0, p5

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/LayoutInflater;->parseInclude(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;Z)V

    goto :goto_4

    .line 810
    :cond_51
    const-string/jumbo v1, "merge"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 811
    new-instance v1, Landroid/view/InflateException;

    const-string v2, "<merge /> must be the root element"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    :cond_62
    move/from16 v0, p5

    invoke-virtual {p0, p2, v8, p3, v0}, Landroid/view/LayoutInflater;->createViewFromTag(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Z)Landroid/view/View;

    move-result-object v3

    .line 815
    .local v3, "view":Landroid/view/View;
    sget-boolean v1, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v1, :cond_85

    instance-of v1, p1, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_85

    .line 816
    if-eqz p1, :cond_85

    move-object v1, p1

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_85

    move-object v1, p1

    .line 817
    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setXmlFilePath(Ljava/lang/CharSequence;)V

    :cond_85
    move-object v11, p2

    .line 819
    check-cast v11, Landroid/view/ViewGroup;

    .line 820
    .local v11, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v11, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 821
    .local v9, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/view/LayoutInflater;->rInflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/View;Landroid/util/AttributeSet;ZZ)V

    .line 822
    invoke-virtual {v11, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 826
    .end local v3    # "view":Landroid/view/View;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "viewGroup":Landroid/view/ViewGroup;
    :cond_99
    if-eqz p4, :cond_9e

    invoke-virtual {p2}, Landroid/view/View;->onFinishInflate()V

    .line 827
    :cond_9e
    return-void
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .registers 6
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_c

    .line 287
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_c
    if-nez p1, :cond_16

    .line 290
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 293
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_20

    .line 294
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 298
    :goto_1f
    return-void

    .line 296
    :cond_20
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v3, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_1f
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 305
    iget-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    if-eqz v0, :cond_c

    .line 306
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A factory has already been set on this LayoutInflater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_c
    if-nez p1, :cond_16

    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Given factory can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/LayoutInflater;->mFactorySet:Z

    .line 312
    iget-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    if-nez v0, :cond_22

    .line 313
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object p1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    .line 317
    :goto_21
    return-void

    .line 315
    :cond_22
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory2:Landroid/view/LayoutInflater$Factory2;

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFactory:Landroid/view/LayoutInflater$Factory;

    goto :goto_21
.end method

.method public setFilter(Landroid/view/LayoutInflater$Filter;)V
    .registers 3
    .param p1, "filter"    # Landroid/view/LayoutInflater$Filter;

    .prologue
    .line 348
    iput-object p1, p0, Landroid/view/LayoutInflater;->mFilter:Landroid/view/LayoutInflater$Filter;

    .line 349
    if-eqz p1, :cond_b

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mFilterMap:Ljava/util/HashMap;

    .line 352
    :cond_b
    return-void
.end method

.method public setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V
    .registers 5
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_7

    .line 324
    iput-object p1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    .line 328
    :goto_6
    return-void

    .line 326
    :cond_7
    new-instance v0, Landroid/view/LayoutInflater$FactoryMerger;

    iget-object v1, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    iget-object v2, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    invoke-direct {v0, p1, p1, v1, v2}, Landroid/view/LayoutInflater$FactoryMerger;-><init>(Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;Landroid/view/LayoutInflater$Factory;Landroid/view/LayoutInflater$Factory2;)V

    iput-object v0, p0, Landroid/view/LayoutInflater;->mPrivateFactory:Landroid/view/LayoutInflater$Factory2;

    goto :goto_6
.end method
