class Jtree < Formula
  desc "Display Jaeger traces as a hierarchical tree in your terminal"
  homepage "https://github.com/tomarrell/jtree"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.1/jtree_0.1.1_darwin_amd64.tar.gz"
      sha256 "61c6bd45868dd3f5848f1c7b3632cbcdf36770293ecd82c7c81b354fe7ddc845"
    end
    on_arm do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.1/jtree_0.1.1_darwin_arm64.tar.gz"
      sha256 "f1a7df11854d9c478bc575c87885d6dcf0105fe266081c8325b019818cc6de2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.1/jtree_0.1.1_linux_amd64.tar.gz"
      sha256 "0f12b891b09c12d416702fc4f615cbe677a190a03018d4a85c1aa51d73086aa3"
    end
    on_arm do
      url "https://github.com/tomarrell/jtree/releases/download/v0.1.1/jtree_0.1.1_linux_arm64.tar.gz"
      sha256 "8db9fc5a28f405b9731417fb4e697acfddf5e965bc476868ad4fe0679477a973"
    end
  end

  def install
    bin.install "jtree"
  end

  test do
    system "#{bin}/jtree", "-h"
  end
end
