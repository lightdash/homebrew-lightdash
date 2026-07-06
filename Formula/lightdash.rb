class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3315.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3315.3/lightdash-cli-0.3315.3-macos-arm64.tar.gz"
      sha256 "50a2f268de89a14ec891e6b25faafc166f28345f62f0d0697f36206b0f98d210"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3315.3/lightdash-cli-0.3315.3-macos-x64.tar.gz"
      sha256 "e5cef1a64ff45ca7a6b2379fe94068afaf11f123c1c8570846a95b1387d8809e"
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
