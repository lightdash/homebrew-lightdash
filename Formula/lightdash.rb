class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3203.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3203.1/lightdash-cli-0.3203.1-macos-arm64.tar.gz"
      sha256 "bc6ddf14ebb4d56af46d478450ae0e10aff892922885a9da2db621e224d52bdd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3203.1/lightdash-cli-0.3203.1-macos-x64.tar.gz"
      sha256 "4e071eb9702c5aafa7b337cd7e570e935bf19a0cc18ce2fa82f14d87330c3336"
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
