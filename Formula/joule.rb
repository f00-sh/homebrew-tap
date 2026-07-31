class Joule < Formula
  desc "Donate idle compute, earn millijoules, use open-weight AI"
  homepage "https://joule.f00.sh/"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-aarch64.tar.gz"
      sha256 "5c77126ac13e137ebcfddb9194fec6d5d31d8d6d8ba5cb7f2d768a9f2a8adf92"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-darwin-x86_64.tar.gz"
      sha256 "05f54dbdcad9c0e685155185ba9e036563b8798ddd59224071f2bbc2bd68370c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-aarch64.tar.gz"
      sha256 "337af68f79a5eb70b3c9e48f57fc45f75a09dd40b3c57d1116bff215ff7062e8"
    end
    on_intel do
      url "https://github.com/f00-sh/joule/releases/download/v#{version}/joule-#{version}-linux-x86_64.tar.gz"
      sha256 "5f77122c25f0eb83662329033e100a3919bc14af059657cc877a08ea1542470b"
    end
  end

  def install
    bin.install "joule"
    man1.install "man/joule.1" if File.exist?("man/joule.1")
    doc.install "man/joule.1.md" if File.exist?("man/joule.1.md")
  end

  test do
    # Binary Cargo version may lag SemVer tag on older cuts; 0.1.3 aligns package version.
    out = shell_output("#{bin}/joule version")
    assert_match(/joule\s+\d+\.\d+\.\d+/, out)
    assert_match(/protocol/, out)
  end
end
