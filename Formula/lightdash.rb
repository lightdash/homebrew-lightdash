class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3389.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3389.1/lightdash-cli-0.3389.1-macos-arm64.tar.gz"
      sha256 "63fddfae0655c82683f072e2addb91c89ec2fbcc9be8207486b490faeada6361"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3389.1/lightdash-cli-0.3389.1-macos-x64.tar.gz"
      sha256 "2933b07af61a358cefebe296de71b9a6e08defcb98df6712396b91eb4c589450"
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
