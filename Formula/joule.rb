class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "bce63b5540d71ca7b1d4ad0436b7999077de2f4d1629a2d298ecdf26c7471d0a"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "ab6ab0c95a228d5840bf110ff30d5dd71fef349c280b25b347dd92f656197212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "ea21451547027732c107c9bfcd8303de1ba33b95cd942c4cc5700708206440ea"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "ea5a485bd546a9f7bfec1fac3ac5a10ac15c0cf610913a88550cced3ac6c630b"
    end
  end

  def install
    bin.install "joule"
    man1.install "man/joule.1" if File.exist?("man/joule.1")
    doc.install "man/joule.1.md" if File.exist?("man/joule.1.md")
  end

  test do
    out = shell_output("#{bin}/joule version")
    assert_match(/joule\s+\d+\.\d+\.\d+/, out)
    assert_match(/protocol/, out)
  end
end
