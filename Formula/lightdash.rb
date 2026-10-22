class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.26.1/lightdash-cli-3.26.1-macos-arm64.tar.gz"
      sha256 "337587f91b5ba5e0a87c482883edbc55c5b8ed85394d5512e85d65406caf8e67"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.26.1/lightdash-cli-3.26.1-macos-x64.tar.gz"
      sha256 "2523a26d4ce5173956889ed8ec7c7f84b3923893646a1e1376b2e613bf3028e1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.26.1/lightdash-cli-3.26.1-linux-x64.tar.gz"
    sha256 "88e23423e7fe43e1606a9802b877ea9784871bf27c66002f2508e73cd0bc1c33"

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
