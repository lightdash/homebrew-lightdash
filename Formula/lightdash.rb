class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2522.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2522.0/lightdash-cli-0.2522.0-macos-arm64.tar.gz"
      sha256 "b9eccc839267296b5e9f2bd83e999310dab055db37066d01155813fe3d33238f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2522.0/lightdash-cli-0.2522.0-macos-x64.tar.gz"
      sha256 "3835fa098239ba66d953cb31fa38c59fe9905705a46f8b7af900497acecc631b"
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
