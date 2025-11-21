class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2200.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2200.0/lightdash-cli-0.2200.0-macos-arm64.tar.gz"
      sha256 "e2fc2425bf0324f4d57833e6d76861e84413a11a6c4b68dd4e44c51aa7f00cd0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2200.0/lightdash-cli-0.2200.0-macos-x64.tar.gz"
      sha256 "2f9557a656ccd58654dda63906e183b667b083afd90e94b17b8074258a7a2bc0"
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
