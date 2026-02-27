class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2541.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2541.0/lightdash-cli-0.2541.0-macos-arm64.tar.gz"
      sha256 "cc01ee6f8793bd9f8be7b39c8b4b5dc568e3ca76fa03acefd7c10648cc0b3c7e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2541.0/lightdash-cli-0.2541.0-macos-x64.tar.gz"
      sha256 "1b98ac778515dae5d80ecffd50de032725d1a70059a477b32c85461d499a2dae"
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
