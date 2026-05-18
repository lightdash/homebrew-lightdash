class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2966.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2966.0/lightdash-cli-0.2966.0-macos-arm64.tar.gz"
      sha256 "0c3e006b1c2ead9f61a9a5f22e97e74d45ec23adbd75bd618350db2bc8fe69ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2966.0/lightdash-cli-0.2966.0-macos-x64.tar.gz"
      sha256 "3c52d6d9f8882fba70f9ddb09e0d926a4d4dd72e838df76b5a8c8768ef2a121e"
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
