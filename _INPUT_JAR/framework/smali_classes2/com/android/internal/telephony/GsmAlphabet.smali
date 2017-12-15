.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;,
        Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    }
.end annotation


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field private static final TAG:Ljava/lang/String; = "GSM"

.field public static final UDH_SEPTET_COST_CONCATENATED_MESSAGE:I = 0x6

.field public static final UDH_SEPTET_COST_LENGTH:I = 0x1

.field public static final UDH_SEPTET_COST_ONE_SHIFT_TABLE:I = 0x4

.field public static final UDH_SEPTET_COST_TWO_SHIFT_TABLES:I = 0x7

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final sCharsToGsmTables:[Landroid/util/SparseIntArray;

.field private static final sCharsToShiftTables:[Landroid/util/SparseIntArray;

.field private static sDisableCountryEncodingCheck:Z

.field private static sEnabledLockingShiftTables:[I

.field private static sEnabledSingleShiftTables:[I

.field private static sGsmSpaceChar:I

.field private static sHighestEnabledSingleShiftCode:I

.field private static final sLanguageShiftTables:[Ljava/lang/String;

.field private static final sLanguageTables:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    .line 1120
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1159
    const/16 v13, 0xe

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "@\u00a3$\u00a5\u00e8\u00e9\u00f9\u00ec\u00f2\u00c7\n\u00d8\u00f8\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u00c6\u00e6\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u00a1ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00bfabcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "@\u00a3$\u00a5\u20ac\u00e9\u00f9\u0131\u00f2\u00c7\n\u011e\u011f\r\u00c5\u00e5\u0394_\u03a6\u0393\u039b\u03a9\u03a0\u03a8\u03a3\u0398\u039e\uffff\u015e\u015f\u00df\u00c9 !\"#\u00a4%&\'()*+,-./0123456789:;<=>?\u0130ABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c4\u00d6\u00d1\u00dc\u00a7\u00e7abcdefghijklmnopqrstuvwxyz\u00e4\u00f6\u00f1\u00fc\u00e0"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, ""

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, "@\u00a3$\u00a5\u00ea\u00e9\u00fa\u00ed\u00f3\u00e7\n\u00d4\u00f4\r\u00c1\u00e1\u0394_\u00aa\u00c7\u00c0\u221e^\\\u20ac\u00d3|\uffff\u00c2\u00e2\u00ca\u00c9 !\"#\u00ba%&\'()*+,-./0123456789:;<=>?\u00cdABCDEFGHIJKLMNOPQRSTUVWXYZ\u00c3\u00d5\u00da\u00dc\u00a7~abcdefghijklmnopqrstuvwxyz\u00e3\u00f5`\u00fc\u00e0"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string/jumbo v15, "\u0981\u0982\u0983\u0985\u0986\u0987\u0988\u0989\u098a\u098b\n\u098c \r \u098f\u0990  \u0993\u0994\u0995\u0996\u0997\u0998\u0999\u099a\uffff\u099b\u099c\u099d\u099e !\u099f\u09a0\u09a1\u09a2\u09a3\u09a4)(\u09a5\u09a6,\u09a7.\u09a80123456789:; \u09aa\u09ab?\u09ac\u09ad\u09ae\u09af\u09b0 \u09b2   \u09b6\u09b7\u09b8\u09b9\u09bc\u09bd\u09be\u09bf\u09c0\u09c1\u09c2\u09c3\u09c4  \u09c7\u09c8  \u09cb\u09cc\u09cd\u09ceabcdefghijklmnopqrstuvwxyz\u09d7\u09dc\u09dd\u09f0\u09f1"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-string/jumbo v15, "\u0a81\u0a82\u0a83\u0a85\u0a86\u0a87\u0a88\u0a89\u0a8a\u0a8b\n\u0a8c\u0a8d\r \u0a8f\u0a90\u0a91 \u0a93\u0a94\u0a95\u0a96\u0a97\u0a98\u0a99\u0a9a\uffff\u0a9b\u0a9c\u0a9d\u0a9e !\u0a9f\u0aa0\u0aa1\u0aa2\u0aa3\u0aa4)(\u0aa5\u0aa6,\u0aa7.\u0aa80123456789:; \u0aaa\u0aab?\u0aac\u0aad\u0aae\u0aaf\u0ab0 \u0ab2\u0ab3 \u0ab5\u0ab6\u0ab7\u0ab8\u0ab9\u0abc\u0abd\u0abe\u0abf\u0ac0\u0ac1\u0ac2\u0ac3\u0ac4\u0ac5 \u0ac7\u0ac8\u0ac9 \u0acb\u0acc\u0acd\u0ad0abcdefghijklmnopqrstuvwxyz\u0ae0\u0ae1\u0ae2\u0ae3\u0af1"

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string/jumbo v15, "\u0901\u0902\u0903\u0905\u0906\u0907\u0908\u0909\u090a\u090b\n\u090c\u090d\r\u090e\u090f\u0910\u0911\u0912\u0913\u0914\u0915\u0916\u0917\u0918\u0919\u091a\uffff\u091b\u091c\u091d\u091e !\u091f\u0920\u0921\u0922\u0923\u0924)(\u0925\u0926,\u0927.\u09280123456789:;\u0929\u092a\u092b?\u092c\u092d\u092e\u092f\u0930\u0931\u0932\u0933\u0934\u0935\u0936\u0937\u0938\u0939\u093c\u093d\u093e\u093f\u0940\u0941\u0942\u0943\u0944\u0945\u0946\u0947\u0948\u0949\u094a\u094b\u094c\u094d\u0950abcdefghijklmnopqrstuvwxyz\u0972\u097b\u097c\u097e\u097f"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-string v15, " \u0c82\u0c83\u0c85\u0c86\u0c87\u0c88\u0c89\u0c8a\u0c8b\n\u0c8c \r\u0c8e\u0c8f\u0c90 \u0c92\u0c93\u0c94\u0c95\u0c96\u0c97\u0c98\u0c99\u0c9a\uffff\u0c9b\u0c9c\u0c9d\u0c9e !\u0c9f\u0ca0\u0ca1\u0ca2\u0ca3\u0ca4)(\u0ca5\u0ca6,\u0ca7.\u0ca80123456789:; \u0caa\u0cab?\u0cac\u0cad\u0cae\u0caf\u0cb0\u0cb1\u0cb2\u0cb3 \u0cb5\u0cb6\u0cb7\u0cb8\u0cb9\u0cbc\u0cbd\u0cbe\u0cbf\u0cc0\u0cc1\u0cc2\u0cc3\u0cc4 \u0cc6\u0cc7\u0cc8 \u0cca\u0ccb\u0ccc\u0ccd\u0cd5abcdefghijklmnopqrstuvwxyz\u0cd6\u0ce0\u0ce1\u0ce2\u0ce3"

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, " \u0d02\u0d03\u0d05\u0d06\u0d07\u0d08\u0d09\u0d0a\u0d0b\n\u0d0c \r\u0d0e\u0d0f\u0d10 \u0d12\u0d13\u0d14\u0d15\u0d16\u0d17\u0d18\u0d19\u0d1a\uffff\u0d1b\u0d1c\u0d1d\u0d1e !\u0d1f\u0d20\u0d21\u0d22\u0d23\u0d24)(\u0d25\u0d26,\u0d27.\u0d280123456789:; \u0d2a\u0d2b?\u0d2c\u0d2d\u0d2e\u0d2f\u0d30\u0d31\u0d32\u0d33\u0d34\u0d35\u0d36\u0d37\u0d38\u0d39 \u0d3d\u0d3e\u0d3f\u0d40\u0d41\u0d42\u0d43\u0d44 \u0d46\u0d47\u0d48 \u0d4a\u0d4b\u0d4c\u0d4d\u0d57abcdefghijklmnopqrstuvwxyz\u0d60\u0d61\u0d62\u0d63\u0d79"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-string/jumbo v15, "\u0b01\u0b02\u0b03\u0b05\u0b06\u0b07\u0b08\u0b09\u0b0a\u0b0b\n\u0b0c \r \u0b0f\u0b10  \u0b13\u0b14\u0b15\u0b16\u0b17\u0b18\u0b19\u0b1a\uffff\u0b1b\u0b1c\u0b1d\u0b1e !\u0b1f\u0b20\u0b21\u0b22\u0b23\u0b24)(\u0b25\u0b26,\u0b27.\u0b280123456789:; \u0b2a\u0b2b?\u0b2c\u0b2d\u0b2e\u0b2f\u0b30 \u0b32\u0b33 \u0b35\u0b36\u0b37\u0b38\u0b39\u0b3c\u0b3d\u0b3e\u0b3f\u0b40\u0b41\u0b42\u0b43\u0b44  \u0b47\u0b48  \u0b4b\u0b4c\u0b4d\u0b56abcdefghijklmnopqrstuvwxyz\u0b57\u0b60\u0b61\u0b62\u0b63"

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string/jumbo v15, "\u0a01\u0a02\u0a03\u0a05\u0a06\u0a07\u0a08\u0a09\u0a0a \n  \r \u0a0f\u0a10  \u0a13\u0a14\u0a15\u0a16\u0a17\u0a18\u0a19\u0a1a\uffff\u0a1b\u0a1c\u0a1d\u0a1e !\u0a1f\u0a20\u0a21\u0a22\u0a23\u0a24)(\u0a25\u0a26,\u0a27.\u0a280123456789:; \u0a2a\u0a2b?\u0a2c\u0a2d\u0a2e\u0a2f\u0a30 \u0a32\u0a33 \u0a35\u0a36 \u0a38\u0a39\u0a3c \u0a3e\u0a3f\u0a40\u0a41\u0a42    \u0a47\u0a48  \u0a4b\u0a4c\u0a4d\u0a51abcdefghijklmnopqrstuvwxyz\u0a70\u0a71\u0a72\u0a73\u0a74"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    const-string v15, " \u0b82\u0b83\u0b85\u0b86\u0b87\u0b88\u0b89\u0b8a \n  \r\u0b8e\u0b8f\u0b90 \u0b92\u0b93\u0b94\u0b95   \u0b99\u0b9a\uffff \u0b9c \u0b9e !\u0b9f   \u0ba3\u0ba4)(  , .\u0ba80123456789:;\u0ba9\u0baa ?  \u0bae\u0baf\u0bb0\u0bb1\u0bb2\u0bb3\u0bb4\u0bb5\u0bb6\u0bb7\u0bb8\u0bb9  \u0bbe\u0bbf\u0bc0\u0bc1\u0bc2   \u0bc6\u0bc7\u0bc8 \u0bca\u0bcb\u0bcc\u0bcd\u0bd0abcdefghijklmnopqrstuvwxyz\u0bd7\u0bf0\u0bf1\u0bf2\u0bf9"

    aput-object v15, v13, v14

    const/16 v14, 0xc

    const-string/jumbo v15, "\u0c01\u0c02\u0c03\u0c05\u0c06\u0c07\u0c08\u0c09\u0c0a\u0c0b\n\u0c0c \r\u0c0e\u0c0f\u0c10 \u0c12\u0c13\u0c14\u0c15\u0c16\u0c17\u0c18\u0c19\u0c1a\uffff\u0c1b\u0c1c\u0c1d\u0c1e !\u0c1f\u0c20\u0c21\u0c22\u0c23\u0c24)(\u0c25\u0c26,\u0c27.\u0c280123456789:; \u0c2a\u0c2b?\u0c2c\u0c2d\u0c2e\u0c2f\u0c30\u0c31\u0c32\u0c33 \u0c35\u0c36\u0c37\u0c38\u0c39 \u0c3d\u0c3e\u0c3f\u0c40\u0c41\u0c42\u0c43\u0c44 \u0c46\u0c47\u0c48 \u0c4a\u0c4b\u0c4c\u0c4d\u0c55abcdefghijklmnopqrstuvwxyz\u0c56\u0c60\u0c61\u0c62\u0c63"

    aput-object v15, v13, v14

    const/16 v14, 0xd

    const-string/jumbo v15, "\u0627\u0622\u0628\u067b\u0680\u067e\u06a6\u062a\u06c2\u067f\n\u0679\u067d\r\u067a\u067c\u062b\u062c\u0681\u0684\u0683\u0685\u0686\u0687\u062d\u062e\u062f\uffff\u068c\u0688\u0689\u068a !\u068f\u068d\u0630\u0631\u0691\u0693)(\u0699\u0632,\u0696.\u06980123456789:;\u069a\u0633\u0634?\u0635\u0636\u0637\u0638\u0639\u0641\u0642\u06a9\u06aa\u06ab\u06af\u06b3\u06b1\u0644\u0645\u0646\u06ba\u06bb\u06bc\u0648\u06c4\u06d5\u06c1\u06be\u0621\u06cc\u06d0\u06d2\u064d\u0650\u064f\u0657\u0654abcdefghijklmnopqrstuvwxyz\u0655\u0651\u0653\u0656\u0670"

    aput-object v15, v13, v14

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    .line 1352
    const/16 v13, 0xe

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "          \u000c         ^                   {}     \\            [~] |                                    \u20ac                          "

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "          \u000c         ^                   {}     \\            [~] |      \u011e \u0130         \u015e               \u00e7 \u20ac \u011f \u0131         \u015f            "

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string v15, "         \u00e7\u000c         ^                   {}     \\            [~] |\u00c1       \u00cd     \u00d3     \u00da           \u00e1   \u20ac   \u00ed     \u00f3     \u00fa          "

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const-string v15, "     \u00ea   \u00e7\u000c\u00d4\u00f4 \u00c1\u00e1  \u03a6\u0393^\u03a9\u03a0\u03a8\u03a3\u0398     \u00ca        {}     \\            [~] |\u00c0       \u00cd     \u00d3     \u00da     \u00c3\u00d5    \u00c2   \u20ac   \u00ed     \u00f3     \u00fa     \u00e3\u00f5  \u00e2"

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u09e6\u09e7 \u09e8\u09e9\u09ea\u09eb\u09ec\u09ed\u09ee\u09ef\u09df\u09e0\u09e1\u09e2{}\u09e3\u09f2\u09f3\u09f4\u09f5\\\u09f6\u09f7\u09f8\u09f9\u09fa       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/4 v14, 0x5

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ae6\u0ae7\u0ae8\u0ae9\u0aea\u0aeb\u0aec\u0aed\u0aee\u0aef  {}     \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0966\u0967\u0968\u0969\u096a\u096b\u096c\u096d\u096e\u096f\u0951\u0952{}\u0953\u0954\u0958\u0959\u095a\\\u095b\u095c\u095d\u095e\u095f\u0960\u0961\u0962\u0963\u0970\u0971 [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/4 v14, 0x7

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0ce6\u0ce7\u0ce8\u0ce9\u0cea\u0ceb\u0cec\u0ced\u0cee\u0cef\u0cde\u0cf1{}\u0cf2    \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0d66\u0d67\u0d68\u0d69\u0d6a\u0d6b\u0d6c\u0d6d\u0d6e\u0d6f\u0d70\u0d71{}\u0d72\u0d73\u0d74\u0d75\u0d7a\\\u0d7b\u0d7c\u0d7d\u0d7e\u0d7f       [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/16 v14, 0x9

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0b66\u0b67\u0b68\u0b69\u0b6a\u0b6b\u0b6c\u0b6d\u0b6e\u0b6f\u0b5c\u0b5d{}\u0b5f\u0b70\u0b71  \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0a66\u0a67\u0a68\u0a69\u0a6a\u0a6b\u0a6c\u0a6d\u0a6e\u0a6f\u0a59\u0a5a{}\u0a5b\u0a5c\u0a5e\u0a75 \\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/16 v14, 0xb

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0964\u0965 \u0be6\u0be7\u0be8\u0be9\u0bea\u0beb\u0bec\u0bed\u0bee\u0bef\u0bf3\u0bf4{}\u0bf5\u0bf6\u0bf7\u0bf8\u0bfa\\            [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/16 v14, 0xc

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*   \u0c66\u0c67\u0c68\u0c69\u0c6a\u0c6b\u0c6c\u0c6d\u0c6e\u0c6f\u0c58\u0c59{}\u0c78\u0c79\u0c7a\u0c7b\u0c7c\\\u0c7d\u0c7e\u0c7f         [~] |ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    const/16 v14, 0xd

    const-string v15, "@\u00a3$\u00a5\u00bf\"\u00a4%&\'\u000c*+ -/<=>\u00a1^\u00a1_#*\u0600\u0601 \u06f0\u06f1\u06f2\u06f3\u06f4\u06f5\u06f6\u06f7\u06f8\u06f9\u060c\u060d{}\u060e\u060f\u0610\u0611\u0612\\\u0613\u0614\u061b\u061f\u0640\u0652\u0658\u066b\u066c\u0672\u0673\u06cd[~]\u06d4|ABCDEFGHIJKLMNOPQRSTUVWXYZ          \u20ac                          "

    aput-object v15, v13, v14

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    .line 1485
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 1486
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v7, v13

    .line 1487
    .local v7, "numTables":I
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v6, v13

    .line 1488
    .local v6, "numShiftTables":I
    if-eq v7, v6, :cond_db

    .line 1489
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: language tables array length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " != shift tables array length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_db
    new-array v13, v7, [Landroid/util/SparseIntArray;

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    .line 1494
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e0
    if-ge v3, v7, :cond_131

    .line 1495
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v11, v13, v3

    .line 1497
    .local v11, "table":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    .line 1498
    .local v12, "tableLen":I
    if-eqz v12, :cond_118

    const/16 v13, 0x80

    if-eq v12, v13, :cond_118

    .line 1499
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: language tables index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (expected 128 or 0)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_118
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v12}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1504
    .local v1, "charToGsmTable":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aput-object v1, v13, v3

    .line 1505
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_122
    if-ge v5, v12, :cond_12e

    .line 1506
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1507
    .local v0, "c":C
    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1505
    add-int/lit8 v5, v5, 0x1

    goto :goto_122

    .line 1494
    .end local v0    # "c":C
    :cond_12e
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    .line 1511
    .end local v1    # "charToGsmTable":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    .end local v11    # "table":Ljava/lang/String;
    .end local v12    # "tableLen":I
    :cond_131
    new-array v13, v7, [Landroid/util/SparseIntArray;

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    .line 1512
    const/4 v3, 0x0

    :goto_136
    if-ge v3, v6, :cond_18b

    .line 1513
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v8, v13, v3

    .line 1515
    .local v8, "shiftTable":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 1516
    .local v9, "shiftTableLen":I
    if-eqz v9, :cond_16e

    const/16 v13, 0x80

    if-eq v9, v13, :cond_16e

    .line 1517
    const-string v13, "GSM"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: language shift tables index "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " length "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " (expected 128 or 0)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_16e
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v9}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1522
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aput-object v2, v13, v3

    .line 1523
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_178
    if-ge v5, v9, :cond_188

    .line 1524
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1525
    .restart local v0    # "c":C
    const/16 v13, 0x20

    if-eq v0, v13, :cond_185

    .line 1526
    invoke-virtual {v2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1523
    :cond_185
    add-int/lit8 v5, v5, 0x1

    goto :goto_178

    .line 1512
    .end local v0    # "c":C
    :cond_188
    add-int/lit8 v3, v3, 0x1

    goto :goto_136

    .line 1803
    .end local v2    # "charToShiftTable":Landroid/util/SparseIntArray;
    .end local v5    # "j":I
    .end local v8    # "shiftTable":Ljava/lang/String;
    .end local v9    # "shiftTableLen":I
    :cond_18b
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1804
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1805
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1806
    new-instance v13, Landroid/util/SparseIntArray;

    invoke-direct {v13}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1809
    const/4 v3, 0x0

    .line 1811
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x40

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1812
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1813
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x24

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1814
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa5

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1815
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1816
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1817
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf9

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1818
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xec

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1819
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf2

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1820
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1821
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1822
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd8

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1823
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf8

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1824
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1825
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc5

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1826
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe5

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1828
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x394

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1829
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x5f

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1830
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1831
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x393

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1832
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x39b

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1833
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1834
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a0

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1835
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a8

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1836
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a3

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1837
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x398

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1838
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x39e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1839
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v14, 0xffff

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1840
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1841
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe6

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1842
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xdf

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1843
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc9

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1845
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x20

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1846
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x21

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1847
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x22

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1848
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x23

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1849
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa4

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1850
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x25

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1851
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x26

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1852
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x27

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1853
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x28

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x29

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1855
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1856
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2b

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1857
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2c

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1858
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2d

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1859
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1860
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x2f

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1862
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x30

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1863
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x31

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1864
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x32

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1865
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x33

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1866
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x34

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1867
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x35

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1868
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x36

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1869
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x37

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1870
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x38

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1871
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x39

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1872
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1873
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3b

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1874
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3c

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1875
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3d

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1876
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1877
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x3f

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1879
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa1

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1880
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x41

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1881
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x42

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1882
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x43

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1883
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x44

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1884
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x45

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1885
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x46

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1886
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x47

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1887
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x48

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1888
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x49

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1889
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1890
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4b

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1891
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4c

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1892
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4d

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1893
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1894
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x4f

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1896
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x50

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1897
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x51

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1898
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x52

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1899
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x53

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1900
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x54

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1901
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x55

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1902
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x56

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1903
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x57

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1904
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x58

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1905
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x59

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1906
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x5a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1907
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xc4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1908
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1909
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xd1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1910
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xdc

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1911
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xa7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1913
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xbf

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1914
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x61

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1915
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x62

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1916
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x63

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1917
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x64

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1918
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x65

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1919
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x66

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1920
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x67

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1921
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x68

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1922
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x69

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1923
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1924
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6b

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1925
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6c

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1926
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6d

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1927
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6e

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1928
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x6f

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1930
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x70

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1931
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x71

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1932
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x72

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1933
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x73

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1934
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x74

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1935
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x75

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1936
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x76

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1937
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x77

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1938
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x78

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1939
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x79

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1940
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x7a

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1941
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe4

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1942
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1943
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xf1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1944
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xfc

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v13, v14, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1945
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0xe0

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v13, v14, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1947
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0xc

    const/16 v15, 0xa

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1948
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5e

    const/16 v15, 0x14

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1949
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7b

    const/16 v15, 0x28

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1950
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7d

    const/16 v15, 0x29

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1951
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5c

    const/16 v15, 0x2f

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1952
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5b

    const/16 v15, 0x3c

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1953
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7e

    const/16 v15, 0x3d

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1954
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x5d

    const/16 v15, 0x3e

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1955
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x7c

    const/16 v15, 0x40

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1956
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v14, 0x20ac

    const/16 v15, 0x65

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1958
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 1959
    .local v10, "size":I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_68a
    if-ge v5, v10, :cond_6a0

    .line 1960
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1959
    add-int/lit8 v5, v5, 0x1

    goto :goto_68a

    .line 1963
    :cond_6a0
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v13}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    .line 1964
    const/4 v5, 0x0

    :goto_6a7
    if-ge v5, v10, :cond_6bd

    .line 1965
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v14, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    sget-object v15, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseIntArray;->put(II)V

    .line 1964
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a7

    .line 1968
    :cond_6bd
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    sput v13, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1969
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 34
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "maxEmailLen"    # I

    .prologue
    .line 1995
    const-string v28, "GSM"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "sEnabledSingleShiftTables.length + sEnabledLockingShiftTables.length == 0: "

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sget-object v30, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int v27, v27, v30

    if-nez v27, :cond_6b

    const/16 v27, 0x1

    :goto_26
    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    sget-object v28, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    if-nez v27, :cond_103

    .line 1998
    new-instance v24, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1999
    .local v24, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v16

    .line 2001
    .local v16, "septets":I
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_6e

    .line 2002
    const/16 v24, 0x0

    .line 2168
    .end local v16    # "septets":I
    .end local v24    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6a
    :goto_6a
    return-object v24

    .line 1995
    :cond_6b
    const/16 v27, 0x0

    goto :goto_26

    .line 2008
    .restart local v16    # "septets":I
    .restart local v24    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6e
    if-lez p2, :cond_ae

    move/from16 v0, p2

    rsub-int v0, v0, 0xa0

    move/from16 v27, v0

    add-int/lit8 v11, v27, -0x1

    .line 2010
    .local v11, "maxLenPerSMS":I
    :goto_78
    const/4 v12, 0x0

    .line 2012
    .local v12, "maxLenPerSMSWithHeader":I
    if-lez p2, :cond_b1

    move/from16 v0, p2

    rsub-int v0, v0, 0x99

    move/from16 v27, v0

    add-int/lit8 v12, v27, -0x1

    .line 2020
    :goto_83
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_b4

    move/from16 v0, v16

    if-gt v0, v11, :cond_b4

    .line 2021
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2022
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2023
    sub-int v27, v11, v16

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2024
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_6a

    .line 2008
    .end local v11    # "maxLenPerSMS":I
    .end local v12    # "maxLenPerSMSWithHeader":I
    :cond_ae
    const/16 v11, 0xa0

    goto :goto_78

    .line 2012
    .restart local v11    # "maxLenPerSMS":I
    .restart local v12    # "maxLenPerSMSWithHeader":I
    :cond_b1
    const/16 v12, 0x99

    goto :goto_83

    .line 2025
    :cond_b4
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_6a

    .line 2026
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2027
    move/from16 v0, v16

    if-le v0, v11, :cond_f2

    .line 2028
    add-int/lit8 v27, v12, -0x1

    add-int v27, v27, v16

    div-int v27, v27, v12

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2031
    rem-int v27, v16, v12

    if-lez v27, :cond_e9

    .line 2032
    rem-int v27, v16, v12

    sub-int v27, v12, v27

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2041
    :goto_e0
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_6a

    .line 2035
    :cond_e9
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_e0

    .line 2038
    :cond_f2
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2039
    sub-int v27, v11, v16

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_e0

    .line 2048
    .end local v11    # "maxLenPerSMS":I
    .end local v12    # "maxLenPerSMSWithHeader":I
    .end local v16    # "septets":I
    .end local v24    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_103
    sget v13, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 2049
    .local v13, "maxSingleShiftCode":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2053
    .local v10, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v27, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, "arr$":[I
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_125
    if-ge v7, v8, :cond_144

    aget v6, v4, v7

    .line 2057
    .local v6, "i":I
    if-eqz v6, :cond_141

    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v27, v27, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_141

    .line 2058
    new-instance v27, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2054
    :cond_141
    add-int/lit8 v7, v7, 0x1

    goto :goto_125

    .line 2062
    .end local v6    # "i":I
    :cond_144
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2064
    .local v21, "sz":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i":I
    :goto_149
    move/from16 v0, v21

    if-ge v6, v0, :cond_20b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_20b

    .line 2065
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 2066
    .local v5, "c":C
    const/16 v27, 0x1b

    move/from16 v0, v27

    if-ne v5, v0, :cond_169

    .line 2067
    const-string v27, "GSM"

    const-string v28, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2064
    :cond_166
    add-int/lit8 v6, v6, 0x1

    goto :goto_149

    .line 2071
    :cond_169
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_16d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_166

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 2072
    .local v9, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v28, v0

    aget-object v27, v27, v28

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v23

    .line 2073
    .local v23, "tableIndex":I
    const/16 v27, -0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_1ea

    .line 2076
    const/16 v22, 0x0

    .local v22, "table":I
    :goto_195
    move/from16 v0, v22

    if-gt v0, v13, :cond_16d

    .line 2077
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v27, v27, v22

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d3

    .line 2078
    sget-object v27, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v27, v27, v22

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v20

    .line 2080
    .local v20, "shiftTableIndex":I
    const/16 v27, -0x1

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_1df

    .line 2081
    if-eqz p1, :cond_1d6

    .line 2083
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x1

    aput v28, v27, v22

    .line 2084
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x1

    aput v28, v27, v22

    .line 2076
    .end local v20    # "shiftTableIndex":I
    :cond_1d3
    :goto_1d3
    add-int/lit8 v22, v22, 0x1

    goto :goto_195

    .line 2088
    .restart local v20    # "shiftTableIndex":I
    :cond_1d6
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    const/16 v28, -0x1

    aput v28, v27, v22

    goto :goto_1d3

    .line 2092
    :cond_1df
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x2

    aput v28, v27, v22

    goto :goto_1d3

    .line 2098
    .end local v20    # "shiftTableIndex":I
    .end local v22    # "table":I
    :cond_1ea
    const/16 v22, 0x0

    .restart local v22    # "table":I
    :goto_1ec
    move/from16 v0, v22

    if-gt v0, v13, :cond_16d

    .line 2099
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v27, v27, v22

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_208

    .line 2100
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v28, v27, v22

    add-int/lit8 v28, v28, 0x1

    aput v28, v27, v22

    .line 2098
    :cond_208
    add-int/lit8 v22, v22, 0x1

    goto :goto_1ec

    .line 2109
    .end local v5    # "c":C
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v22    # "table":I
    .end local v23    # "tableIndex":I
    :cond_20b
    new-instance v24, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v24 .. v24}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2110
    .restart local v24    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v27, 0x7fffffff

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2111
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2112
    const v14, 0x7fffffff

    .line 2113
    .local v14, "minUnencodableCount":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_228
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_2e4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 2114
    .restart local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v19, 0x0

    .local v19, "shiftTable":I
    :goto_236
    move/from16 v0, v19

    if-gt v0, v13, :cond_228

    .line 2115
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v27, v0

    aget v16, v27, v19

    .line 2116
    .restart local v16    # "septets":I
    const/16 v27, -0x1

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_24b

    .line 2114
    :cond_248
    :goto_248
    add-int/lit8 v19, v19, 0x1

    goto :goto_236

    .line 2120
    :cond_24b
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    if-eqz v27, :cond_2cb

    if-eqz v19, :cond_2cb

    .line 2121
    const/16 v25, 0x8

    .line 2131
    .local v25, "udhLength":I
    :goto_255
    add-int v27, v16, v25

    const/16 v28, 0xa0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_2da

    .line 2132
    if-nez v25, :cond_263

    .line 2133
    const/16 v25, 0x1

    .line 2135
    :cond_263
    add-int/lit8 v25, v25, 0x6

    .line 2136
    move/from16 v0, v25

    rsub-int v0, v0, 0xa0

    move/from16 v17, v0

    .line 2137
    .local v17, "septetsPerMessage":I
    add-int v27, v16, v17

    add-int/lit8 v27, v27, -0x1

    div-int v15, v27, v17

    .line 2139
    .local v15, "msgCount":I
    mul-int v27, v15, v17

    sub-int v18, v27, v16

    .line 2147
    .end local v17    # "septetsPerMessage":I
    .local v18, "septetsRemaining":I
    :goto_275
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v27, v0

    aget v26, v27, v19

    .line 2148
    .local v26, "unencodableCount":I
    if-eqz p1, :cond_281

    move/from16 v0, v26

    if-gt v0, v14, :cond_248

    .line 2151
    :cond_281
    if-eqz p1, :cond_287

    move/from16 v0, v26

    if-lt v0, v14, :cond_2a7

    :cond_287
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v15, v0, :cond_2a7

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v15, v0, :cond_248

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v27, v0

    move/from16 v0, v18

    move/from16 v1, v27

    if-le v0, v1, :cond_248

    .line 2154
    :cond_2a7
    move/from16 v14, v26

    .line 2155
    move-object/from16 v0, v24

    iput v15, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2156
    move/from16 v0, v16

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2157
    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2158
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 2159
    move/from16 v0, v19

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto/16 :goto_248

    .line 2123
    .end local v15    # "msgCount":I
    .end local v18    # "septetsRemaining":I
    .end local v25    # "udhLength":I
    .end local v26    # "unencodableCount":I
    :cond_2cb
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v27, v0

    if-nez v27, :cond_2d3

    if-eqz v19, :cond_2d6

    .line 2124
    :cond_2d3
    const/16 v25, 0x5

    .restart local v25    # "udhLength":I
    goto :goto_255

    .line 2127
    .end local v25    # "udhLength":I
    :cond_2d6
    const/16 v25, 0x0

    .restart local v25    # "udhLength":I
    goto/16 :goto_255

    .line 2141
    :cond_2da
    const/4 v15, 0x1

    .line 2142
    .restart local v15    # "msgCount":I
    move/from16 v0, v25

    rsub-int v0, v0, 0xa0

    move/from16 v27, v0

    sub-int v18, v27, v16

    .restart local v18    # "septetsRemaining":I
    goto :goto_275

    .line 2164
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v15    # "msgCount":I
    .end local v16    # "septets":I
    .end local v18    # "septetsRemaining":I
    .end local v19    # "shiftTable":I
    .end local v25    # "udhLength":I
    :cond_2e4
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v27, v0

    const v28, 0x7fffffff

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6a

    .line 2165
    const/16 v24, 0x0

    goto/16 :goto_6a
.end method

.method static synthetic access$000()I
    .registers 1

    .prologue
    .line 47
    sget v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    return v0
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    return-object v0
.end method

.method public static charToGsm(C)I
    .registers 5
    .param p0, "c"    # C

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x0

    .line 151
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    .line 154
    :goto_8
    return v1

    .line 152
    :catch_9
    move-exception v0

    .line 154
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    goto :goto_8
.end method

.method public static charToGsm(CZ)I
    .registers 7
    .param p0, "c"    # C
    .param p1, "throwException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 174
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 176
    .local v0, "ret":I
    if-ne v0, v2, :cond_2c

    .line 177
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 179
    if-ne v0, v2, :cond_29

    .line 180
    if-eqz p1, :cond_20

    .line 181
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 183
    :cond_20
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 190
    :goto_28
    return v1

    .line 186
    :cond_29
    const/16 v1, 0x1b

    goto :goto_28

    :cond_2c
    move v1, v0

    .line 190
    goto :goto_28
.end method

.method public static charToGsmExtended(C)I
    .registers 6
    .param p0, "c"    # C

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 204
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 206
    .local v0, "ret":I
    if-ne v0, v2, :cond_16

    .line 207
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 210
    .end local v0    # "ret":I
    :cond_16
    return v0
.end method

.method public static convertEachCharacter(C)C
    .registers 5
    .param p0, "c"    # C

    .prologue
    const/4 v3, -0x1

    .line 1589
    move v0, p0

    .line 1592
    .local v0, "ret":C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    array-length v2, v2

    add-int/2addr v1, v2

    if-nez v1, :cond_14

    .line 1593
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_15

    .line 1594
    move v0, p0

    .line 1603
    :cond_14
    :goto_14
    return v0

    .line 1595
    :cond_15
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v3, :cond_1f

    .line 1596
    move v0, p0

    goto :goto_14

    .line 1599
    :cond_1f
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_14
.end method

.method private static convertNonGSMCharacter(C)C
    .registers 5
    .param p0, "c"    # C

    .prologue
    .line 1607
    move v0, p0

    .line 1609
    .local v0, "temp":C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1610
    sparse-switch v0, :sswitch_data_1f4

    .line 1783
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_25

    const/16 v1, 0x60

    if-ne v0, v1, :cond_2b

    .line 1784
    :cond_25
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1ef

    .line 1786
    const/16 v0, 0x20

    .line 1795
    :cond_2b
    :goto_2b
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1797
    return v0

    .line 1621
    :sswitch_45
    const/16 v0, 0x61

    goto :goto_2b

    .line 1622
    :sswitch_48
    const/16 v0, 0x61

    goto :goto_2b

    .line 1623
    :sswitch_4b
    const/16 v0, 0x61

    goto :goto_2b

    .line 1624
    :sswitch_4e
    const/16 v0, 0x61

    goto :goto_2b

    .line 1625
    :sswitch_51
    const/16 v0, 0x61

    goto :goto_2b

    .line 1627
    :sswitch_54
    const/16 v0, 0x41

    goto :goto_2b

    .line 1628
    :sswitch_57
    const/16 v0, 0x41

    goto :goto_2b

    .line 1629
    :sswitch_5a
    const/16 v0, 0x41

    goto :goto_2b

    .line 1630
    :sswitch_5d
    const/16 v0, 0x41

    goto :goto_2b

    .line 1631
    :sswitch_60
    const/16 v0, 0x41

    goto :goto_2b

    .line 1632
    :sswitch_63
    const/16 v0, 0x41

    goto :goto_2b

    .line 1634
    :sswitch_66
    const/16 v0, 0x63

    goto :goto_2b

    .line 1635
    :sswitch_69
    const/16 v0, 0x63

    goto :goto_2b

    .line 1636
    :sswitch_6c
    const/16 v0, 0x63

    goto :goto_2b

    .line 1638
    :sswitch_6f
    const/16 v0, 0x43

    goto :goto_2b

    .line 1639
    :sswitch_72
    const/16 v0, 0x43

    goto :goto_2b

    .line 1641
    :sswitch_75
    const/16 v0, 0x64

    goto :goto_2b

    .line 1643
    :sswitch_78
    const/16 v0, 0x44

    goto :goto_2b

    .line 1645
    :sswitch_7b
    const/16 v0, 0x65

    goto :goto_2b

    .line 1646
    :sswitch_7e
    const/16 v0, 0x65

    goto :goto_2b

    .line 1647
    :sswitch_81
    const/16 v0, 0x65

    goto :goto_2b

    .line 1648
    :sswitch_84
    const/16 v0, 0x65

    goto :goto_2b

    .line 1649
    :sswitch_87
    const/16 v0, 0x65

    goto :goto_2b

    .line 1651
    :sswitch_8a
    const/16 v0, 0x45

    goto :goto_2b

    .line 1652
    :sswitch_8d
    const/16 v0, 0x45

    goto :goto_2b

    .line 1653
    :sswitch_90
    const/16 v0, 0x45

    goto :goto_2b

    .line 1654
    :sswitch_93
    const/16 v0, 0x45

    goto :goto_2b

    .line 1655
    :sswitch_96
    const/16 v0, 0x45

    goto :goto_2b

    .line 1656
    :sswitch_99
    const/16 v0, 0x45

    goto :goto_2b

    .line 1658
    :sswitch_9c
    const/16 v0, 0x67

    goto :goto_2b

    .line 1660
    :sswitch_9f
    const/16 v0, 0x47

    goto :goto_2b

    .line 1662
    :sswitch_a2
    const/16 v0, 0x69

    goto :goto_2b

    .line 1663
    :sswitch_a5
    const/16 v0, 0x69

    goto :goto_2b

    .line 1664
    :sswitch_a8
    const/16 v0, 0x69

    goto :goto_2b

    .line 1665
    :sswitch_ab
    const/16 v0, 0x69

    goto/16 :goto_2b

    .line 1666
    :sswitch_af
    const/16 v0, 0x69

    goto/16 :goto_2b

    .line 1668
    :sswitch_b3
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1669
    :sswitch_b7
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1670
    :sswitch_bb
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1671
    :sswitch_bf
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1672
    :sswitch_c3
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1673
    :sswitch_c7
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1675
    :sswitch_cb
    const/16 v0, 0x6c

    goto/16 :goto_2b

    .line 1676
    :sswitch_cf
    const/16 v0, 0x6c

    goto/16 :goto_2b

    .line 1677
    :sswitch_d3
    const/16 v0, 0x6c

    goto/16 :goto_2b

    .line 1679
    :sswitch_d7
    const/16 v0, 0x4c

    goto/16 :goto_2b

    .line 1680
    :sswitch_db
    const/16 v0, 0x4c

    goto/16 :goto_2b

    .line 1681
    :sswitch_df
    const/16 v0, 0x4c

    goto/16 :goto_2b

    .line 1683
    :sswitch_e3
    const/16 v0, 0x6e

    goto/16 :goto_2b

    .line 1684
    :sswitch_e7
    const/16 v0, 0x6e

    goto/16 :goto_2b

    .line 1686
    :sswitch_eb
    const/16 v0, 0x4e

    goto/16 :goto_2b

    .line 1687
    :sswitch_ef
    const/16 v0, 0x4e

    goto/16 :goto_2b

    .line 1689
    :sswitch_f3
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1690
    :sswitch_f7
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1691
    :sswitch_fb
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1692
    :sswitch_ff
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1693
    :sswitch_103
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1695
    :sswitch_107
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1696
    :sswitch_10b
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1697
    :sswitch_10f
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1698
    :sswitch_113
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1699
    :sswitch_117
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1700
    :sswitch_11b
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1702
    :sswitch_11f
    const/16 v0, 0x72

    goto/16 :goto_2b

    .line 1703
    :sswitch_123
    const/16 v0, 0x72

    goto/16 :goto_2b

    .line 1705
    :sswitch_127
    const/16 v0, 0x52

    goto/16 :goto_2b

    .line 1706
    :sswitch_12b
    const/16 v0, 0x52

    goto/16 :goto_2b

    .line 1708
    :sswitch_12f
    const/16 v0, 0x73

    goto/16 :goto_2b

    .line 1709
    :sswitch_133
    const/16 v0, 0x73

    goto/16 :goto_2b

    .line 1710
    :sswitch_137
    const/16 v0, 0x73

    goto/16 :goto_2b

    .line 1712
    :sswitch_13b
    const/16 v0, 0x53

    goto/16 :goto_2b

    .line 1713
    :sswitch_13f
    const/16 v0, 0x53

    goto/16 :goto_2b

    .line 1714
    :sswitch_143
    const/16 v0, 0x53

    goto/16 :goto_2b

    .line 1716
    :sswitch_147
    const/16 v0, 0x74

    goto/16 :goto_2b

    .line 1718
    :sswitch_14b
    const/16 v0, 0x54

    goto/16 :goto_2b

    .line 1720
    :sswitch_14f
    const/16 v0, 0x75

    goto/16 :goto_2b

    .line 1721
    :sswitch_153
    const/16 v0, 0x75

    goto/16 :goto_2b

    .line 1722
    :sswitch_157
    const/16 v0, 0x75

    goto/16 :goto_2b

    .line 1723
    :sswitch_15b
    const/16 v0, 0x75

    goto/16 :goto_2b

    .line 1725
    :sswitch_15f
    const/16 v0, 0x55

    goto/16 :goto_2b

    .line 1726
    :sswitch_163
    const/16 v0, 0x55

    goto/16 :goto_2b

    .line 1727
    :sswitch_167
    const/16 v0, 0x55

    goto/16 :goto_2b

    .line 1728
    :sswitch_16b
    const/16 v0, 0x55

    goto/16 :goto_2b

    .line 1729
    :sswitch_16f
    const/16 v0, 0x55

    goto/16 :goto_2b

    .line 1731
    :sswitch_173
    const/16 v0, 0x79

    goto/16 :goto_2b

    .line 1732
    :sswitch_177
    const/16 v0, 0x79

    goto/16 :goto_2b

    .line 1734
    :sswitch_17b
    const/16 v0, 0x59

    goto/16 :goto_2b

    .line 1735
    :sswitch_17f
    const/16 v0, 0x59

    goto/16 :goto_2b

    .line 1737
    :sswitch_183
    const/16 v0, 0x7a

    goto/16 :goto_2b

    .line 1738
    :sswitch_187
    const/16 v0, 0x7a

    goto/16 :goto_2b

    .line 1739
    :sswitch_18b
    const/16 v0, 0x7a

    goto/16 :goto_2b

    .line 1741
    :sswitch_18f
    const/16 v0, 0x5a

    goto/16 :goto_2b

    .line 1742
    :sswitch_193
    const/16 v0, 0x5a

    goto/16 :goto_2b

    .line 1743
    :sswitch_197
    const/16 v0, 0x5a

    goto/16 :goto_2b

    .line 1746
    :sswitch_19b
    const/16 v0, 0x45

    goto/16 :goto_2b

    .line 1747
    :sswitch_19f
    const/16 v0, 0x50

    goto/16 :goto_2b

    .line 1748
    :sswitch_1a3
    const/16 v0, 0x54

    goto/16 :goto_2b

    .line 1749
    :sswitch_1a7
    const/16 v0, 0x59

    goto/16 :goto_2b

    .line 1750
    :sswitch_1ab
    const/16 v0, 0x49

    goto/16 :goto_2b

    .line 1751
    :sswitch_1af
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1752
    :sswitch_1b3
    const/16 v0, 0x41

    goto/16 :goto_2b

    .line 1753
    :sswitch_1b7
    const/16 v0, 0x48

    goto/16 :goto_2b

    .line 1754
    :sswitch_1bb
    const/16 v0, 0x4b

    goto/16 :goto_2b

    .line 1755
    :sswitch_1bf
    const/16 v0, 0x5a

    goto/16 :goto_2b

    .line 1756
    :sswitch_1c3
    const/16 v0, 0x58

    goto/16 :goto_2b

    .line 1757
    :sswitch_1c7
    const/16 v0, 0x42

    goto/16 :goto_2b

    .line 1758
    :sswitch_1cb
    const/16 v0, 0x4e

    goto/16 :goto_2b

    .line 1759
    :sswitch_1cf
    const/16 v0, 0x4d

    goto/16 :goto_2b

    .line 1772
    :sswitch_1d3
    const/16 v0, 0x65

    goto/16 :goto_2b

    .line 1773
    :sswitch_1d7
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1774
    :sswitch_1db
    const/16 v0, 0x75

    goto/16 :goto_2b

    .line 1775
    :sswitch_1df
    const/16 v0, 0x4f

    goto/16 :goto_2b

    .line 1776
    :sswitch_1e3
    const/16 v0, 0x6f

    goto/16 :goto_2b

    .line 1777
    :sswitch_1e7
    const/16 v0, 0x55

    goto/16 :goto_2b

    .line 1778
    :sswitch_1eb
    const/16 v0, 0x75

    goto/16 :goto_2b

    .line 1788
    :cond_1ef
    const v0, 0xfeff

    goto/16 :goto_2b

    .line 1610
    :sswitch_data_1f4
    .sparse-switch
        0xc0 -> :sswitch_54
        0xc1 -> :sswitch_57
        0xc2 -> :sswitch_5a
        0xc3 -> :sswitch_5d
        0xc8 -> :sswitch_8a
        0xca -> :sswitch_8d
        0xcb -> :sswitch_90
        0xcc -> :sswitch_b3
        0xcd -> :sswitch_b7
        0xce -> :sswitch_bb
        0xcf -> :sswitch_bf
        0xd2 -> :sswitch_107
        0xd3 -> :sswitch_10b
        0xd4 -> :sswitch_10f
        0xd5 -> :sswitch_113
        0xd9 -> :sswitch_15f
        0xda -> :sswitch_163
        0xdb -> :sswitch_167
        0xdd -> :sswitch_17b
        0xe1 -> :sswitch_45
        0xe2 -> :sswitch_48
        0xe3 -> :sswitch_4b
        0xe7 -> :sswitch_6c
        0xe9 -> :sswitch_1d3
        0xea -> :sswitch_7b
        0xeb -> :sswitch_7e
        0xed -> :sswitch_a2
        0xee -> :sswitch_a5
        0xef -> :sswitch_a8
        0xf3 -> :sswitch_f3
        0xf4 -> :sswitch_f7
        0xf5 -> :sswitch_fb
        0xf6 -> :sswitch_1d7
        0xfa -> :sswitch_14f
        0xfb -> :sswitch_153
        0xfc -> :sswitch_1db
        0xfd -> :sswitch_173
        0xff -> :sswitch_177
        0x100 -> :sswitch_60
        0x101 -> :sswitch_51
        0x104 -> :sswitch_63
        0x105 -> :sswitch_4e
        0x106 -> :sswitch_6f
        0x107 -> :sswitch_66
        0x10c -> :sswitch_72
        0x10d -> :sswitch_69
        0x10e -> :sswitch_78
        0x10f -> :sswitch_75
        0x112 -> :sswitch_99
        0x113 -> :sswitch_87
        0x118 -> :sswitch_93
        0x119 -> :sswitch_81
        0x11a -> :sswitch_96
        0x11b -> :sswitch_84
        0x11e -> :sswitch_9f
        0x11f -> :sswitch_9c
        0x12a -> :sswitch_c7
        0x12b -> :sswitch_af
        0x130 -> :sswitch_c3
        0x131 -> :sswitch_ab
        0x139 -> :sswitch_d7
        0x13a -> :sswitch_cb
        0x13d -> :sswitch_db
        0x13e -> :sswitch_cf
        0x141 -> :sswitch_df
        0x142 -> :sswitch_d3
        0x143 -> :sswitch_eb
        0x144 -> :sswitch_e3
        0x147 -> :sswitch_ef
        0x148 -> :sswitch_e7
        0x14c -> :sswitch_117
        0x14d -> :sswitch_ff
        0x150 -> :sswitch_1df
        0x151 -> :sswitch_1e3
        0x152 -> :sswitch_11b
        0x153 -> :sswitch_103
        0x154 -> :sswitch_127
        0x155 -> :sswitch_11f
        0x158 -> :sswitch_12b
        0x159 -> :sswitch_123
        0x15a -> :sswitch_13b
        0x15b -> :sswitch_12f
        0x15e -> :sswitch_143
        0x15f -> :sswitch_137
        0x160 -> :sswitch_13f
        0x161 -> :sswitch_133
        0x164 -> :sswitch_14b
        0x165 -> :sswitch_147
        0x16a -> :sswitch_16f
        0x16b -> :sswitch_15b
        0x16e -> :sswitch_16b
        0x16f -> :sswitch_157
        0x170 -> :sswitch_1e7
        0x171 -> :sswitch_1eb
        0x178 -> :sswitch_17f
        0x179 -> :sswitch_18f
        0x17a -> :sswitch_183
        0x17b -> :sswitch_197
        0x17c -> :sswitch_18b
        0x17d -> :sswitch_193
        0x17e -> :sswitch_187
        0x391 -> :sswitch_1b3
        0x392 -> :sswitch_1c7
        0x395 -> :sswitch_19b
        0x396 -> :sswitch_1bf
        0x397 -> :sswitch_1b7
        0x399 -> :sswitch_1ab
        0x39a -> :sswitch_1bb
        0x39c -> :sswitch_1cf
        0x39d -> :sswitch_1cb
        0x39f -> :sswitch_1af
        0x3a1 -> :sswitch_19f
        0x3a4 -> :sswitch_1a3
        0x3a5 -> :sswitch_1a7
        0x3a7 -> :sswitch_1c3
    .end sparse-switch
.end method

.method public static countGsmSeptets(C)I
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v1, 0x0

    .line 730
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_5} :catch_7

    move-result v1

    .line 733
    :goto_6
    return v1

    .line 731
    :catch_7
    move-exception v0

    .line 733
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    goto :goto_6
.end method

.method public static countGsmSeptets(CZ)I
    .registers 6
    .param p0, "c"    # C
    .param p1, "throwsException"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 748
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_e

    .line 760
    :cond_d
    :goto_d
    return v0

    .line 752
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 753
    const/4 v0, 0x2

    goto :goto_d

    .line 756
    :cond_1a
    if-eqz p1, :cond_d

    .line 757
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .registers 29
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 852
    sget-boolean v25, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    if-nez v25, :cond_7

    .line 853
    invoke-static {}, Lcom/android/internal/telephony/GsmAlphabet;->enableCountrySpecificEncodings()V

    .line 856
    :cond_7
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    sget-object v26, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    if-nez v25, :cond_89

    .line 857
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 858
    .local v22, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v14

    .line 859
    .local v14, "septets":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_37

    .line 860
    const/16 v22, 0x0

    .line 987
    .end local v14    # "septets":I
    .end local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_36
    :goto_36
    return-object v22

    .line 862
    .restart local v14    # "septets":I
    .restart local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_37
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 863
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 864
    const/16 v25, 0xa0

    move/from16 v0, v25

    if-le v14, v0, :cond_76

    .line 865
    add-int/lit16 v0, v14, 0x98

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 867
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    mul-int/lit16 v0, v0, 0x99

    move/from16 v25, v0

    sub-int v25, v25, v14

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 873
    :goto_6d
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    goto :goto_36

    .line 870
    :cond_76
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 871
    rsub-int v0, v14, 0xa0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_6d

    .line 877
    .end local v14    # "septets":I
    .end local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_89
    sget v11, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 878
    .local v11, "maxSingleShiftCode":I
    new-instance v10, Ljava/util/ArrayList;

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 882
    .local v10, "lpcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;>;"
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    const/16 v26, 0x0

    invoke-direct/range {v25 .. v26}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .local v4, "arr$":[I
    array-length v8, v4

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_ab
    if-ge v7, v8, :cond_ca

    aget v6, v4, v7

    .line 885
    .local v6, "i":I
    if-eqz v6, :cond_c7

    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_c7

    .line 886
    new-instance v25, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;-><init>(I)V

    move-object/from16 v0, v25

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_c7
    add-int/lit8 v7, v7, 0x1

    goto :goto_ab

    .line 890
    .end local v6    # "i":I
    :cond_ca
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v19

    .line 892
    .local v19, "sz":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i":I
    :goto_cf
    move/from16 v0, v19

    if-ge v6, v0, :cond_191

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_191

    .line 893
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 894
    .local v5, "c":C
    const/16 v25, 0x1b

    move/from16 v0, v25

    if-ne v5, v0, :cond_ef

    .line 895
    const-string v25, "GSM"

    const-string v26, "countGsmSeptets() string contains Escape character, ignoring!"

    invoke-static/range {v25 .. v26}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_ec
    add-int/lit8 v6, v6, 0x1

    goto :goto_cf

    .line 899
    :cond_ef
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_f3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_ec

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 900
    .local v9, "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v26, v0

    aget-object v25, v25, v26

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v21

    .line 901
    .local v21, "tableIndex":I
    const/16 v25, -0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-ne v0, v1, :cond_170

    .line 903
    const/16 v20, 0x0

    .local v20, "table":I
    :goto_11b
    move/from16 v0, v20

    if-gt v0, v11, :cond_f3

    .line 904
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_159

    .line 905
    sget-object v25, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v25, v25, v20

    const/16 v26, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v18

    .line 906
    .local v18, "shiftTableIndex":I
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_165

    .line 907
    if-eqz p1, :cond_15c

    .line 909
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 910
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 903
    .end local v18    # "shiftTableIndex":I
    :cond_159
    :goto_159
    add-int/lit8 v20, v20, 0x1

    goto :goto_11b

    .line 913
    .restart local v18    # "shiftTableIndex":I
    :cond_15c
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    const/16 v26, -0x1

    aput v26, v25, v20

    goto :goto_159

    .line 917
    :cond_165
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x2

    aput v26, v25, v20

    goto :goto_159

    .line 923
    .end local v18    # "shiftTableIndex":I
    .end local v20    # "table":I
    :cond_170
    const/16 v20, 0x0

    .restart local v20    # "table":I
    :goto_172
    move/from16 v0, v20

    if-gt v0, v11, :cond_f3

    .line 924
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v25, v25, v20

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_18e

    .line 925
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v26, v25, v20

    add-int/lit8 v26, v26, 0x1

    aput v26, v25, v20

    .line 923
    :cond_18e
    add-int/lit8 v20, v20, 0x1

    goto :goto_172

    .line 933
    .end local v5    # "c":C
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v20    # "table":I
    .end local v21    # "tableIndex":I
    :cond_191
    new-instance v22, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 934
    .restart local v22    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const v25, 0x7fffffff

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 935
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 936
    const v12, 0x7fffffff

    .line 937
    .local v12, "minUnencodableCount":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1ae
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_262

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;

    .line 938
    .restart local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    const/16 v17, 0x0

    .local v17, "shiftTable":I
    :goto_1bc
    move/from16 v0, v17

    if-gt v0, v11, :cond_1ae

    .line 939
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->septetCounts:[I

    move-object/from16 v25, v0

    aget v14, v25, v17

    .line 940
    .restart local v14    # "septets":I
    const/16 v25, -0x1

    move/from16 v0, v25

    if-ne v14, v0, :cond_1cf

    .line 938
    :cond_1cc
    :goto_1cc
    add-int/lit8 v17, v17, 0x1

    goto :goto_1bc

    .line 944
    :cond_1cf
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-eqz v25, :cond_24a

    if-eqz v17, :cond_24a

    .line 945
    const/16 v23, 0x8

    .line 953
    .local v23, "udhLength":I
    :goto_1d9
    add-int v25, v14, v23

    const/16 v26, 0xa0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_258

    .line 954
    if-nez v23, :cond_1e7

    .line 955
    const/16 v23, 0x1

    .line 957
    :cond_1e7
    add-int/lit8 v23, v23, 0x6

    .line 958
    move/from16 v0, v23

    rsub-int v15, v0, 0xa0

    .line 959
    .local v15, "septetsPerMessage":I
    add-int v25, v14, v15

    add-int/lit8 v25, v25, -0x1

    div-int v13, v25, v15

    .line 960
    .local v13, "msgCount":I
    mul-int v25, v13, v15

    sub-int v16, v25, v14

    .line 966
    .end local v15    # "septetsPerMessage":I
    .local v16, "septetsRemaining":I
    :goto_1f7
    iget-object v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->unencodableCounts:[I

    move-object/from16 v25, v0

    aget v24, v25, v17

    .line 967
    .local v24, "unencodableCount":I
    if-eqz p1, :cond_203

    move/from16 v0, v24

    if-gt v0, v12, :cond_1cc

    .line 970
    :cond_203
    if-eqz p1, :cond_209

    move/from16 v0, v24

    if-lt v0, v12, :cond_229

    :cond_209
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v13, v0, :cond_229

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v13, v0, :cond_1cc

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-le v0, v1, :cond_1cc

    .line 973
    :cond_229
    move/from16 v12, v24

    .line 974
    move-object/from16 v0, v22

    iput v13, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 975
    move-object/from16 v0, v22

    iput v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 976
    move/from16 v0, v16

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 977
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    .line 978
    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    goto :goto_1cc

    .line 946
    .end local v13    # "msgCount":I
    .end local v16    # "septetsRemaining":I
    .end local v23    # "udhLength":I
    .end local v24    # "unencodableCount":I
    :cond_24a
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;->languageCode:I

    move/from16 v25, v0

    if-nez v25, :cond_252

    if-eqz v17, :cond_255

    .line 947
    :cond_252
    const/16 v23, 0x5

    .restart local v23    # "udhLength":I
    goto :goto_1d9

    .line 949
    .end local v23    # "udhLength":I
    :cond_255
    const/16 v23, 0x0

    .restart local v23    # "udhLength":I
    goto :goto_1d9

    .line 962
    :cond_258
    const/4 v13, 0x1

    .line 963
    .restart local v13    # "msgCount":I
    move/from16 v0, v23

    rsub-int v0, v0, 0xa0

    move/from16 v25, v0

    sub-int v16, v25, v14

    .restart local v16    # "septetsRemaining":I
    goto :goto_1f7

    .line 983
    .end local v9    # "lpc":Lcom/android/internal/telephony/GsmAlphabet$LanguagePairCount;
    .end local v13    # "msgCount":I
    .end local v14    # "septets":I
    .end local v16    # "septetsRemaining":I
    .end local v17    # "shiftTable":I
    .end local v23    # "udhLength":I
    :cond_262
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    move/from16 v25, v0

    const v26, 0x7fffffff

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_36

    .line 984
    const/16 v22, 0x0

    goto/16 :goto_36
.end method

.method public static countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I
    .registers 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    const/4 v8, -0x1

    .line 791
    const/4 v4, 0x0

    .line 792
    .local v4, "count":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 794
    .local v7, "sz":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 796
    .local v0, "activePhoneType":I
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v9, p2

    .line 797
    .local v2, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v9, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v3, v9, p3

    .line 798
    .local v3, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v7, :cond_7c

    .line 799
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 800
    .local v1, "c":C
    const/16 v9, 0x1b

    if-ne v1, v9, :cond_2b

    .line 801
    const-string v9, "GSM"

    const-string v10, "countGsmSeptets() string contains Escape character, skipping."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_28
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 804
    :cond_2b
    invoke-virtual {v2, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eq v9, v8, :cond_6e

    .line 805
    add-int/lit8 v4, v4, 0x1

    .line 818
    :goto_33
    const-string/jumbo v9, "ro.csc.sales_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 819
    .local v6, "salesCode":Ljava/lang/String;
    const-string v9, "CTC"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    const-string v9, "APT"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    :cond_4c
    const/4 v9, 0x2

    if-ne v0, v9, :cond_28

    const-string/jumbo v9, "true"

    const-string/jumbo v10, "persist.radio.cdma.lms"

    const-string v11, "false"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 822
    const/16 v9, 0xa5

    if-eq v1, v9, :cond_6d

    const/16 v9, 0xa3

    if-eq v1, v9, :cond_6d

    const/16 v9, 0x20ac

    if-ne v1, v9, :cond_28

    .line 828
    .end local v1    # "c":C
    .end local v6    # "salesCode":Ljava/lang/String;
    :cond_6d
    :goto_6d
    return v8

    .line 806
    .restart local v1    # "c":C
    :cond_6e
    invoke-virtual {v3, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    if-eq v9, v8, :cond_77

    .line 807
    add-int/lit8 v4, v4, 0x2

    goto :goto_33

    .line 808
    :cond_77
    if-eqz p1, :cond_6d

    .line 809
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .end local v1    # "c":C
    :cond_7c
    move v8, v4

    .line 828
    goto :goto_6d
.end method

.method private static enableCountrySpecificEncodings()V
    .registers 3

    .prologue
    .line 1091
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 1093
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1094
    const v1, 0x107002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1096
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v1, v1

    if-lez v1, :cond_27

    .line 1097
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    .line 1102
    :goto_26
    return-void

    .line 1100
    :cond_27
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I

    goto :goto_26
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I
    .registers 13
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "langTable"    # I
    .param p4, "langShiftTable"    # I

    .prologue
    const/4 v7, -0x1

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "accumulator":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1010
    .local v5, "size":I
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v6, p3

    .line 1011
    .local v2, "charToLangTable":Landroid/util/SparseIntArray;
    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v1, v6, p4

    .line 1012
    .local v1, "charToLangShiftTable":Landroid/util/SparseIntArray;
    move v4, p1

    .local v4, "i":I
    :goto_f
    if-ge v4, v5, :cond_33

    .line 1013
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1014
    .local v3, "encodedSeptet":I
    if-ne v3, v7, :cond_2d

    .line 1015
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1016
    if-ne v3, v7, :cond_2a

    .line 1018
    add-int/lit8 v0, v0, 0x1

    .line 1025
    :goto_27
    if-le v0, p2, :cond_30

    .line 1029
    .end local v3    # "encodedSeptet":I
    .end local v4    # "i":I
    :goto_29
    return v4

    .line 1020
    .restart local v3    # "encodedSeptet":I
    .restart local v4    # "i":I
    :cond_2a
    add-int/lit8 v0, v0, 0x2

    goto :goto_27

    .line 1023
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1012
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .end local v3    # "encodedSeptet":I
    :cond_33
    move v4, v5

    .line 1029
    goto :goto_29
.end method

.method public static declared-synchronized getEnabledLockingShiftTables()[I
    .registers 2

    .prologue
    .line 1083
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getEnabledSingleShiftTables()[I
    .registers 2

    .prologue
    .line 1071
    const-class v0, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I

    .prologue
    const/4 v3, 0x0

    .line 463
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .registers 14
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I

    .prologue
    .line 1547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1551
    .local v6, "ret":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 1553
    .local v5, "prevCharWasEscape":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, p2, :cond_52

    .line 1554
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 1556
    .local v0, "bitOffset":I
    :try_start_d
    div-int/lit8 v1, v0, 0x8

    .line 1557
    .local v1, "byteOffset":I
    rem-int/lit8 v7, v0, 0x8

    .line 1560
    .local v7, "shift":I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 1563
    .local v3, "gsmVal":I
    const/4 v8, 0x1

    if-le v7, v8, :cond_2d

    .line 1565
    const/16 v8, 0x7f

    add-int/lit8 v9, v7, -0x1

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 1567
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    rsub-int/lit8 v9, v7, 0x8

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 1570
    :cond_2d
    if-eqz v5, :cond_3a

    .line 1571
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1572
    const/4 v5, 0x0

    .line 1553
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1573
    :cond_3a
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_40

    .line 1574
    const/4 v5, 0x1

    goto :goto_37

    .line 1576
    :cond_40
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_47} :catch_48

    goto :goto_37

    .line 1579
    .end local v1    # "byteOffset":I
    .end local v3    # "gsmVal":I
    .end local v7    # "shift":I
    :catch_48
    move-exception v2

    .line 1580
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1581
    const/4 v8, 0x0

    .line 1584
    .end local v0    # "bitOffset":I
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :goto_51
    return-object v8

    :cond_52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_51
.end method

.method public static gsm7BitPackedToString([BIIIII)Ljava/lang/String;
    .registers 21
    .param p0, "pdu"    # [B
    .param p1, "offset"    # I
    .param p2, "lengthSeptets"    # I
    .param p3, "numPaddingBits"    # I
    .param p4, "languageTable"    # I
    .param p5, "shiftTable"    # I

    .prologue
    .line 484
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    .local v9, "ret":Ljava/lang/StringBuilder;
    if-ltz p4, :cond_10

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p4

    if-le v0, v12, :cond_33

    .line 487
    :cond_10
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown language table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 p4, 0x0

    .line 490
    :cond_33
    if-ltz p5, :cond_3c

    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    array-length v12, v12

    move/from16 v0, p5

    if-le v0, v12, :cond_5f

    .line 491
    :cond_3c
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "unknown single shift table "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/16 p5, 0x0

    .line 496
    :cond_5f
    const/4 v8, 0x0

    .line 497
    .local v8, "prevCharWasEscape":Z
    :try_start_60
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v7, v12, p4

    .line 498
    .local v7, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v11, v12, p5

    .line 500
    .local v11, "shiftTableToChar":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_93

    .line 501
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no language table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v7, v12, v13

    .line 504
    :cond_93
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_be

    .line 505
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no single shift table for code "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", using default"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 509
    :cond_be
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_bf
    move/from16 v0, p2

    if-ge v6, v0, :cond_122

    .line 510
    mul-int/lit8 v12, v6, 0x7

    add-int v1, v12, p3

    .line 512
    .local v1, "bitOffset":I
    div-int/lit8 v2, v1, 0x8

    .line 513
    .local v2, "byteOffset":I
    rem-int/lit8 v10, v1, 0x8

    .line 516
    .local v10, "shift":I
    add-int v12, p1, v2

    aget-byte v12, p0, v12

    shr-int/2addr v12, v10

    and-int/lit8 v5, v12, 0x7f

    .line 519
    .local v5, "gsmVal":I
    const/4 v12, 0x1

    if-le v10, v12, :cond_e7

    .line 521
    const/16 v12, 0x7f

    add-int/lit8 v13, v10, -0x1

    shr-int/2addr v12, v13

    and-int/2addr v5, v12

    .line 523
    add-int v12, p1, v2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, p0, v12

    rsub-int/lit8 v13, v10, 0x8

    shl-int/2addr v12, v13

    and-int/lit8 v12, v12, 0x7f

    or-int/2addr v5, v12

    .line 526
    :cond_e7
    if-eqz v8, :cond_114

    .line 527
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_f6

    .line 528
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    :goto_f2
    const/4 v8, 0x0

    .line 509
    :goto_f3
    add-int/lit8 v6, v6, 0x1

    goto :goto_bf

    .line 530
    :cond_f6
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 531
    .local v3, "c":C
    const/16 v12, 0x20

    if-ne v3, v12, :cond_110

    .line 532
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_105
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_105} :catch_106

    goto :goto_f2

    .line 544
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v3    # "c":C
    .end local v5    # "gsmVal":I
    .end local v6    # "i":I
    .end local v7    # "languageTableToChar":Ljava/lang/String;
    .end local v10    # "shift":I
    .end local v11    # "shiftTableToChar":Ljava/lang/String;
    :catch_106
    move-exception v4

    .line 545
    .local v4, "ex":Ljava/lang/RuntimeException;
    const-string v12, "GSM"

    const-string v13, "Error GSM 7 bit packed: "

    invoke-static {v12, v13, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    const/4 v12, 0x0

    .line 549
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    :goto_10f
    return-object v12

    .line 534
    .restart local v1    # "bitOffset":I
    .restart local v2    # "byteOffset":I
    .restart local v3    # "c":C
    .restart local v5    # "gsmVal":I
    .restart local v6    # "i":I
    .restart local v7    # "languageTableToChar":Ljava/lang/String;
    .restart local v10    # "shift":I
    .restart local v11    # "shiftTableToChar":Ljava/lang/String;
    :cond_110
    :try_start_110
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f2

    .line 538
    .end local v3    # "c":C
    :cond_114
    const/16 v12, 0x1b

    if-ne v5, v12, :cond_11a

    .line 539
    const/4 v8, 0x1

    goto :goto_f3

    .line 541
    :cond_11a
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_121
    .catch Ljava/lang/RuntimeException; {:try_start_110 .. :try_end_121} :catch_106

    goto :goto_f3

    .line 549
    .end local v1    # "bitOffset":I
    .end local v2    # "byteOffset":I
    .end local v5    # "gsmVal":I
    .end local v10    # "shift":I
    :cond_122
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_10f
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 567
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "characterset"    # Ljava/lang/String;

    .prologue
    .line 582
    const/4 v5, 0x0

    .line 583
    .local v5, "isMbcs":Z
    const/4 v2, 0x0

    .line 584
    .local v2, "charset":Ljava/nio/charset/Charset;
    const/4 v7, 0x0

    .line 586
    .local v7, "mbcsBuffer":Ljava/nio/ByteBuffer;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_24

    const-string/jumbo v12, "us-ascii"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_24

    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 589
    const/4 v5, 0x1

    .line 590
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 591
    const/4 v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 595
    :cond_24
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v6, v12, v13

    .line 596
    .local v6, "languageTableToChar":Ljava/lang/String;
    sget-object v12, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v11, v12, v13

    .line 598
    .local v11, "shiftTableToChar":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 599
    .local v9, "ret":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 600
    .local v8, "prevWasEscape":Z
    move v3, p1

    .local v3, "i":I
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_38
    add-int v12, p1, p2

    if-ge v4, v12, :cond_44

    .line 603
    aget-byte v12, p0, v4

    and-int/lit16 v1, v12, 0xff

    .line 605
    .local v1, "c":I
    const/16 v12, 0xff

    if-ne v1, v12, :cond_49

    .line 650
    .end local v1    # "c":I
    :cond_44
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 607
    .restart local v1    # "c":I
    :cond_49
    const/16 v12, 0x1b

    if-ne v1, v12, :cond_5d

    .line 608
    if-eqz v8, :cond_5a

    .line 612
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const/4 v8, 0x0

    move v3, v4

    .line 600
    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_56
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_38

    .line 615
    :cond_5a
    const/4 v8, 0x1

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_56

    .line 618
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_5d
    if-eqz v8, :cond_8a

    .line 619
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_7d

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 621
    .local v10, "shiftChar":C
    :goto_69
    const/16 v12, 0x20

    if-ne v10, v12, :cond_86

    .line 623
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_80

    .line 624
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7a
    move v3, v4

    .line 646
    .end local v4    # "i":I
    .end local v10    # "shiftChar":C
    .restart local v3    # "i":I
    :goto_7b
    const/4 v8, 0x0

    goto :goto_56

    .line 619
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_7d
    const/16 v10, 0x20

    goto :goto_69

    .line 626
    .restart local v10    # "shiftChar":C
    :cond_80
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 629
    :cond_86
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7a

    .line 632
    .end local v10    # "shiftChar":C
    :cond_8a
    if-eqz v5, :cond_96

    const/16 v12, 0x80

    if-lt v1, v12, :cond_96

    add-int/lit8 v12, v4, 0x1

    add-int v13, p1, p2

    if-lt v12, v13, :cond_ac

    .line 633
    :cond_96
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v1, v12, :cond_a5

    .line 634
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7b

    .line 636
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_a5
    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_7b

    .line 640
    .end local v3    # "i":I
    .restart local v4    # "i":I
    :cond_ac
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 641
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    const/4 v12, 0x2

    invoke-virtual {v7, p0, v4, v12}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 642
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 643
    invoke-virtual {v2, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7b
.end method

.method public static gsmExtendedToChar(I)C
    .registers 5
    .param p0, "gsmChar"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x20

    .line 249
    const/16 v2, 0x1b

    if-ne p0, v2, :cond_9

    move v0, v1

    .line 259
    :cond_8
    :goto_8
    return v0

    .line 251
    :cond_9
    if-ltz p0, :cond_22

    const/16 v2, 0x80

    if-ge p0, v2, :cond_22

    .line 252
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageShiftTables:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 253
    .local v0, "c":C
    if-ne v0, v1, :cond_8

    .line 254
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    .end local v0    # "c":C
    :cond_22
    move v0, v1

    .line 259
    goto :goto_8
.end method

.method public static gsmToChar(I)C
    .registers 3
    .param p0, "gsmChar"    # I

    .prologue
    .line 227
    if-ltz p0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 228
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->sLanguageTables:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 230
    :goto_f
    return v0

    :cond_10
    const/16 v0, 0x20

    goto :goto_f
.end method

.method public static isGsmSeptets(C)Z
    .registers 5
    .param p0, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 765
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 773
    :cond_d
    :goto_d
    return v0

    .line 769
    :cond_e
    sget-object v2, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v3, :cond_d

    move v0, v1

    .line 773
    goto :goto_d
.end method

.method private static packSmsChar([BII)V
    .registers 7
    .param p0, "packedChars"    # [B
    .param p1, "bitOffset"    # I
    .param p2, "value"    # I

    .prologue
    .line 440
    div-int/lit8 v0, p1, 0x8

    .line 441
    .local v0, "byteOffset":I
    rem-int/lit8 v1, p1, 0x8

    .line 443
    .local v1, "shift":I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 445
    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    .line 446
    add-int/lit8 v0, v0, 0x1

    rsub-int/lit8 v2, v1, 0x8

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 448
    :cond_1a
    return-void
.end method

.method static declared-synchronized setEnabledLockingShiftTables([I)V
    .registers 3
    .param p0, "tables"    # [I

    .prologue
    .line 1058
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledLockingShiftTables:[I

    .line 1059
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 1060
    monitor-exit v1

    return-void

    .line 1058
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setEnabledSingleShiftTables([I)V
    .registers 3
    .param p0, "tables"    # [I

    .prologue
    .line 1040
    const-class v1, Lcom/android/internal/telephony/GsmAlphabet;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/GsmAlphabet;->sEnabledSingleShiftTables:[I

    .line 1041
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/GsmAlphabet;->sDisableCountryEncodingCheck:Z

    .line 1043
    array-length v0, p0

    if-lez v0, :cond_14

    .line 1044
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    .line 1048
    :goto_12
    monitor-exit v1

    return-void

    .line 1046
    :cond_14
    const/4 v0, 0x0

    :try_start_15
    sput v0, Lcom/android/internal/telephony/GsmAlphabet;->sHighestEnabledSingleShiftCode:I
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_18

    goto :goto_12

    .line 1040
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 339
    const/4 v0, 0x1

    invoke-static {p0, v1, v0, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;II)[B
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "languageTable"    # I
    .param p2, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 363
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZII)[B
    .registers 20
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "startingSeptetOffset"    # I
    .param p2, "throwException"    # Z
    .param p3, "languageTable"    # I
    .param p4, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 391
    .local v7, "dataLen":I
    if-nez p2, :cond_1a

    const/4 v13, 0x1

    :goto_7
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v13, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v10

    .line 393
    .local v10, "septetCount":I
    const/4 v13, -0x1

    if-ne v10, v13, :cond_1c

    .line 394
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "countGsmSeptetsUsingTables(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 391
    .end local v10    # "septetCount":I
    :cond_1a
    const/4 v13, 0x0

    goto :goto_7

    .line 396
    .restart local v10    # "septetCount":I
    :cond_1c
    add-int v10, v10, p1

    .line 397
    const/16 v13, 0xff

    if-le v10, v13, :cond_2a

    .line 398
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Payload cannot exceed 255 septets"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 400
    :cond_2a
    mul-int/lit8 v13, v10, 0x7

    add-int/lit8 v13, v13, 0x7

    div-int/lit8 v3, v13, 0x8

    .line 401
    .local v3, "byteCount":I
    add-int/lit8 v13, v3, 0x1

    new-array v9, v13, [B

    .line 402
    .local v9, "ret":[B
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v5, v13, p3

    .line 403
    .local v5, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v13, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v6, v13, p4

    .line 404
    .local v6, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v8, 0x0

    .local v8, "i":I
    move/from16 v11, p1

    .local v11, "septets":I
    mul-int/lit8 v2, p1, 0x7

    .line 405
    .local v2, "bitOffset":I
    :goto_41
    if-ge v8, v7, :cond_80

    if-ge v11, v10, :cond_80

    .line 407
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 408
    .local v4, "c":C
    const/4 v13, -0x1

    invoke-virtual {v5, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 409
    .local v12, "v":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_6c

    .line 410
    const/4 v13, -0x1

    invoke-virtual {v6, v4, v13}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 411
    const/4 v13, -0x1

    if-ne v12, v13, :cond_76

    .line 412
    if-eqz p2, :cond_64

    .line 413
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string/jumbo v14, "stringToGsm7BitPacked(): unencodable char"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 415
    :cond_64
    const/16 v13, 0x20

    const/16 v14, 0x20

    invoke-virtual {v5, v13, v14}, Landroid/util/SparseIntArray;->get(II)I

    move-result v12

    .line 423
    :cond_6c
    :goto_6c
    invoke-static {v9, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 424
    add-int/lit8 v11, v11, 0x1

    .line 406
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v2, v2, 0x7

    goto :goto_41

    .line 418
    :cond_76
    const/16 v13, 0x1b

    invoke-static {v9, v2, v13}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 419
    add-int/lit8 v2, v2, 0x7

    .line 420
    add-int/lit8 v11, v11, 0x1

    goto :goto_6c

    .line 426
    .end local v4    # "c":C
    .end local v12    # "v":I
    :cond_80
    const/4 v13, 0x0

    int-to-byte v14, v10

    aput-byte v14, v9, v13

    .line 427
    return-object v9
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .registers 3
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-static {p0, p1, v0, v0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    .registers 10
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 306
    if-eqz p1, :cond_6

    array-length v3, p1

    if-nez v3, :cond_b

    .line 307
    :cond_6
    invoke-static {p0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;II)[B

    move-result-object v2

    .line 319
    :goto_a
    return-object v2

    .line 310
    :cond_b
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 311
    .local v0, "headerBits":I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 313
    .local v1, "headerSeptets":I
    invoke-static {p0, v1, v4, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZII)[B

    move-result-object v2

    .line 317
    .local v2, "ret":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 318
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_a
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .registers 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 663
    const/4 v2, 0x1

    invoke-static {p0, v2, v3, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v1

    .line 666
    .local v1, "septets":I
    new-array v0, v1, [B

    .line 668
    .local v0, "ret":[B
    array-length v2, v0

    invoke-static {p0, v0, v3, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 670
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "dest"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v11, 0x20

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 685
    move v4, p2

    .line 686
    .local v4, "outByteIndex":I
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToGsmTables:[Landroid/util/SparseIntArray;

    aget-object v1, v8, v10

    .line 687
    .local v1, "charToLanguageTable":Landroid/util/SparseIntArray;
    sget-object v8, Lcom/android/internal/telephony/GsmAlphabet;->sCharsToShiftTables:[Landroid/util/SparseIntArray;

    aget-object v2, v8, v10

    .line 690
    .local v2, "charToShiftTable":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, "sz":I
    move v5, v4

    .line 691
    .end local v4    # "outByteIndex":I
    .local v5, "outByteIndex":I
    :goto_13
    if-ge v3, v6, :cond_3b

    sub-int v8, v5, p2

    if-ge v8, p3, :cond_3b

    .line 694
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 696
    .local v0, "c":C
    invoke-virtual {v1, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 698
    .local v7, "v":I
    if-ne v7, v9, :cond_4d

    .line 699
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 700
    if-ne v7, v9, :cond_36

    .line 701
    invoke-virtual {v1, v11, v11}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    move v4, v5

    .line 712
    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    :goto_2e
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    int-to-byte v8, v7

    aput-byte v8, p1, v4

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 704
    :cond_36
    add-int/lit8 v8, v5, 0x1

    sub-int/2addr v8, p2

    if-lt v8, p3, :cond_45

    .line 716
    .end local v0    # "c":C
    .end local v7    # "v":I
    :cond_3b
    :goto_3b
    sub-int v8, v5, p2

    if-ge v8, p3, :cond_4c

    .line 717
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    aput-byte v9, p1, v5

    move v5, v4

    .end local v4    # "outByteIndex":I
    .restart local v5    # "outByteIndex":I
    goto :goto_3b

    .line 708
    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_45
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    const/16 v8, 0x1b

    aput-byte v8, p1, v5

    goto :goto_2e

    .line 719
    .end local v0    # "c":C
    .end local v4    # "outByteIndex":I
    .end local v7    # "v":I
    .restart local v5    # "outByteIndex":I
    :cond_4c
    return-void

    .restart local v0    # "c":C
    .restart local v7    # "v":I
    :cond_4d
    move v4, v5

    .end local v5    # "outByteIndex":I
    .restart local v4    # "outByteIndex":I
    goto :goto_2e
.end method
