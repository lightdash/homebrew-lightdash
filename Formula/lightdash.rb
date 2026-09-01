class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.80.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.80.0/lightdash-cli-2.80.0-macos-arm64.tar.gz"
      sha256 "124b437c7e6b697a597553225e3a5fd5d1f630bb322b059dce016a2bd75393e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.80.0/lightdash-cli-2.80.0-macos-x64.tar.gz"
      sha256 "7aa939c01ba08cb43b4b28d1af4a43a724ca269ff5ed03e784ff79e44dbb56e5"
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
