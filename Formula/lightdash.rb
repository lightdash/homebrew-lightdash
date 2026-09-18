class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.260.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.260.0/lightdash-cli-2.260.0-macos-arm64.tar.gz"
      sha256 "41209cb533f2b96358821a3189c479a3efe07604cd533468663d30918d15de88"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.260.0/lightdash-cli-2.260.0-macos-x64.tar.gz"
      sha256 "d350578816d290c1ed8970bf69f5df56c93e28f7bc7bd7fd83747ebd2f1c85a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.223.0/lightdash-cli-2.223.0-linux-x64.tar.gz"
      sha256 "a3581a82b02919725687376016164019d1cb54cb66d5bf31252d9c42cc2ed2a9"
    end
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
