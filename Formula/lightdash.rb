class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.185.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.185.0/lightdash-cli-3.185.0-macos-arm64.tar.gz"
      sha256 "53633c3193687fc91c82ac5f24dfb5d4e9850d836bcd0615cecb9d71e33ac9ec"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.185.0/lightdash-cli-3.185.0-macos-x64.tar.gz"
      sha256 "969e02944c143df85a7bdf9803782021bf41faf3ebc17b871aeedfd1050ab1f4"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.185.0/lightdash-cli-3.185.0-linux-x64.tar.gz"
    sha256 "6752d466474da350bc0660a1028e83b4a8d8216b793e3542c1cd61ec036da09f"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
