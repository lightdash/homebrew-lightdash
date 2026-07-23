class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3470.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3470.1/lightdash-cli-0.3470.1-macos-arm64.tar.gz"
      sha256 "6394b822c053ca45d32bc7a09bdcd04f59dffcc7704cc7e64536e618eca7a06d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3470.1/lightdash-cli-0.3470.1-macos-x64.tar.gz"
      sha256 "a1f5147e2fcec5c5d27116ec0a976880bca500f1d92ac745c077e56437db07a9"
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
