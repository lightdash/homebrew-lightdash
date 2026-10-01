class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.412.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.412.0/lightdash-cli-2.412.0-macos-arm64.tar.gz"
      sha256 "a8545f85db079bc97d422e842d0f302662519ac5e423364432fee5e1f955903d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.412.0/lightdash-cli-2.412.0-macos-x64.tar.gz"
      sha256 "45d3ce45ee41f6bc7c9e7b895ef33bb0a71d311ea4fd49a89b49dcbd08488613"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.412.0/lightdash-cli-2.412.0-linux-x64.tar.gz"
    sha256 "93e47dc9f0626f1c2b641c98c881ffd586a90ffd9167aa4deb22424f2a11d4c2"

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
