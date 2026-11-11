class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.216.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.216.0/lightdash-cli-3.216.0-macos-arm64.tar.gz"
      sha256 "487960f1b98f563dbb4e7668399545cedeb1ed2fc73a995490a8b1bc1720cde2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.216.0/lightdash-cli-3.216.0-macos-x64.tar.gz"
      sha256 "9a06fb848305849b37a5ce5de698c80e4ee5d4c6a9ed687ca0c0eb4402a0f476"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.216.0/lightdash-cli-3.216.0-linux-x64.tar.gz"
    sha256 "f5a495edb4e34189d5016cf5b357bc4540e6fe5fc0085b5b683664ccccaf7ae7"

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
