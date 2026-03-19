class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2639.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2639.2/lightdash-cli-0.2639.2-macos-arm64.tar.gz"
      sha256 "a27e043a76b1a2e70be4e907f2e41036e261a0cc96370e982f8d9ccebcfc17c9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2639.2/lightdash-cli-0.2639.2-macos-x64.tar.gz"
      sha256 "83953f139f86333c432f706a7202aaf58cce5bb6b6158bfd12cc107ee9283dfa"
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
