class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.149.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.4/lightdash-cli-2.149.4-macos-arm64.tar.gz"
      sha256 "a9aa2862555b8a7683f18c5e4a75f7cb648c03657919db4e3a1c6a4626d958e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.149.4/lightdash-cli-2.149.4-macos-x64.tar.gz"
      sha256 "1281d2adf3d5ee31b6edbbecee9d12158c229f50349c252f1e978cb3f5f17a68"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
