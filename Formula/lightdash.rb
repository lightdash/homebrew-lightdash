class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.420.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.6/lightdash-cli-3.420.6-macos-arm64.tar.gz"
      sha256 "dfc55d333e5aae8e69d9668bcabad6d9c048e16af7ff6fe678610d1f5227241d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.420.6/lightdash-cli-3.420.6-macos-x64.tar.gz"
      sha256 "386b191c5af0bb1e6bcda0160df5fcf09996968f2740f7bf3e7455fa8724b23c"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.420.6/lightdash-cli-3.420.6-linux-x64.tar.gz"
    sha256 "564cf3a4637becb861839454aa539c0277f61b9ba95be4f11f44145f36a75e65"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
