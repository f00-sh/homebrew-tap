class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.8"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "abaebcc817b0b713d278e019b0bb384caa1d90694b2e57b180390d021e18cf0a"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "8254f0f5e1565ad0b3437faf02b101a05b1c1d57c542ea27d2ae450b2513fb0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "f4e62d238d01b29569241f233942a48e2810ebb57e6a876a852eab741551f8a8"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "deca74b02998fb23963dcc02b48ab176a4eeb7f0f2e77ad6f1abf85a22024ed9"
    end
  end
  def install
    bin.install "joule"
  end
  test do
    assert_match(/joule\s+\d+\.\d+\.\d+/, shell_output("#{bin}/joule version"))
  end
end
