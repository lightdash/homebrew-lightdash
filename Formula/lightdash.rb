class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.376.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.376.0/lightdash-cli-3.376.0-macos-arm64.tar.gz"
      sha256 "56bd6c5ba5f3187e9be79f69e7656ed90b72f954563a93aa193bcdbd12f706d2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.376.0/lightdash-cli-3.376.0-macos-x64.tar.gz"
      sha256 "e289f6986497411ca6e32773ea5293d788437d8bd30b731e6c63104983c322e2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.376.0/lightdash-cli-3.376.0-linux-x64.tar.gz"
    sha256 "434a0e2fd306cd97d325e26298d628766c415190ff2a350a759cd3f4ae0d8fc4"

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
