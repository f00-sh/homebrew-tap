class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "7569149300005161a51cea59c04f42e91d39b61899f06206fa53638023283d54"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "6d08529663a9101152ab40ec318d81c851b14686886c20769150bdb0ed2227e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "e254e69b462c7737026826d8a7d895838266021441c5233bfaaf0dc68577f7f9"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "376ab1b59a97d8a620004a925ea468b9a91cdc6876f0997bf14d3e2eb26aa787"
    end
  end

  def install
    bin.install "joule"
    man1.install "man/joule.1" if File.exist?("man/joule.1")
    doc.install "man/joule.1.md" if File.exist?("man/joule.1.md")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/joule version")
  end
end
