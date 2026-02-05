class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2426.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2426.0/lightdash-cli-0.2426.0-macos-arm64.tar.gz"
      sha256 "d7efe65b73fde46f2b83be901d920a38ef715db280672ab96d6e1e269fd129e1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2426.0/lightdash-cli-0.2426.0-macos-x64.tar.gz"
      sha256 "b70b02b617f4dc66e129cc1ad8ee7d11086f6323e7d334352db8fadfcd30b378"
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
