class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3270.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3270.1/lightdash-cli-0.3270.1-macos-arm64.tar.gz"
      sha256 "ef313c27a4931ef39b100987a6580da732a0f1f2aac6133ff8e97f5c5c1ef4d4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3270.1/lightdash-cli-0.3270.1-macos-x64.tar.gz"
      sha256 "f38f385d5af5040d32b4fc9504646c9e8543a5697624038f35bcbba66c933bb2"
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
