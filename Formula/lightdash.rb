class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2961.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2961.1/lightdash-cli-0.2961.1-macos-arm64.tar.gz"
      sha256 "fc00e1001454eca732a9b760d5cdc3ee6e1195972de60a40da40414c99450f1e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2961.1/lightdash-cli-0.2961.1-macos-x64.tar.gz"
      sha256 "ba94469ee2723521a148d729421b183166c9478fcb3dbc11876f150136bc00d7"
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
